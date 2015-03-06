/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : yiwx

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-03-04 14:55:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wx_actionlink`
-- ----------------------------
DROP TABLE IF EXISTS `wx_actionlink`;
CREATE TABLE `wx_actionlink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `keyword` text,
  `title` text,
  `descs` text,
  `img` text,
  `createTime` datetime DEFAULT NULL,
  `url` text,
  `serviceid` bigint(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_actionlink
-- ----------------------------
INSERT INTO `wx_actionlink` VALUES ('28', '2', '1394033989490', '微全景22', '360全景33', '请为全景填写描述44', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-17 21:06:22', 'http://www.vxinfeng.com/prequanjing.action?serviceid=13', '13', '3');
INSERT INTO `wx_actionlink` VALUES ('30', '2', '1394033989490', '微预约', '在线预约', '请点击进入在线预约页面!', 'http://ggbxnpiuy0o1j5g/YiWX/weixin/order/image/yy_pic.jpg', '2014-03-17 21:11:42', 'http://115313937qq.eicp.net/YiWX/orderprew.action?serviceid=21', '21', '5');
INSERT INTO `wx_actionlink` VALUES ('31', '2', '1394033989490', '微留言', '微留言', '请为留言填写描述', 'http://115313937qq.eicp.net/YiWX/weixin/message/images/cover.jpg', '2014-03-17 21:12:42', 'http://115313937qq.eicp.net/YiWX/showMessages.action?serviceid=2', '2', '1');
INSERT INTO `wx_actionlink` VALUES ('35', '2', '1394033989490', '刮刮卡', '马上送红包', '请点击进入刮刮奖活动页面，祝您好运！', 'http://action.tenpay.com/res_action/2013/legua/img/card/card_b_13.jpg', '2014-03-17 21:27:10', 'http://www.vxinfeng.com/guaguakawx.action?serviceid=5', '5', '7');
INSERT INTO `wx_actionlink` VALUES ('52', '2', '1394033989490', '微调研', '微调研', '请为调研填写描述', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:05:34', 'http://www.vxinfeng.com/researchperson.action?serviceid=17', '17', '8');
INSERT INTO `wx_actionlink` VALUES ('53', '2', '1394033989490', '微调研', '微调研', '请为调研填写描述', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:13:23', 'http://www.vxinfeng.com/researchperson.action?serviceid=18', '18', '8');
INSERT INTO `wx_actionlink` VALUES ('54', '2', '1394033989490', '微调研', '微调研', '请为调研填写描述123', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:18:32', 'http://www.vxinfeng.com/researchperson.action?serviceid=19', '19', '8');
INSERT INTO `wx_actionlink` VALUES ('56', '2', '1394033989490', '微调研', '微调研', '请为调研填写描述', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:40:47', 'http://www.vxinfeng.com/researchperson.action?serviceid=20', '20', '8');
INSERT INTO `wx_actionlink` VALUES ('99', '2', '1396258483230', '微官网', '微官网标题', '请点击进入微官网页面，祝您好运！', '/YiWX/weixin/gw/img/gw.jpg', '2014-03-31 17:54:19', 'http://www.vxinfeng.com/preview_NewWebSite.action?appid=1396258483230', '1396258483230', '0');
INSERT INTO `wx_actionlink` VALUES ('107', '2', '1394033989490', 'AA', 'BB', 'CC', '/YiWX/weixin/gw/img/gw.jpg', '2014-05-19 17:49:37', 'http://www.vxinfeng.com/preview_NewWebSite.action?appid=1394033989490', '1394033989490', '0');
INSERT INTO `wx_actionlink` VALUES ('119', '2', '1394033989490', '刮刮卡cesces', '幸运刮刮卡cesces', '请点击进入刮cesces', 'http://ww1.sinaimg.cn/thumbnail/8a20733ejw1ecxvbuvk9aj20tn18g7de.jpg', '2014-06-25 17:39:39', 'http://www.vxinfeng.com/guaguakawx.action?serviceid=9', '9', '7');
INSERT INTO `wx_actionlink` VALUES ('151', '2', '1394033989490', '刮刮卡', '幸运刮刮卡', '请点击进入刮奖活动页面，祝您好运！', '/YiWX/img/service/guaguaka01.jpg', '2014-07-21 15:08:43', 'www.jinwanergansha.com/YiWX/guaguakawx.action?serviceid=10', '10', '7');
INSERT INTO `wx_actionlink` VALUES ('152', '2', '1394033989490', '刮刮卡', '幸运刮刮卡', '请点击进入刮奖活动页面，祝您好运！', '/YiWX/img/service/guaguaka01.jpg', '2014-07-22 18:24:49', 'http://www.vxinfeng.com/guaguakawx.action?serviceid=11', '11', '7');
INSERT INTO `wx_actionlink` VALUES ('193', '2', '1394033989490', '微相册', '微相册', '点击访问我的微相册', '/YiWX/weixin/photo/image/cover.jpg', '2014-08-04 20:42:55', 'http://www.vxinfeng.com/photolist.action?serviceid=3', '3', '4');
INSERT INTO `wx_actionlink` VALUES ('223', '2', '1394033989490', '打卡', '办公考勤', '需要允许公众号使用你的地理位置,在公众号详情中打开提供位置信息即可。', '/YiWX/weixin/clock/image/clock_card.png', '2014-08-07 21:05:39', 'www.jinwanergansha.com/YiWX/clockwx.action?serviceid=16', '16', '9');
INSERT INTO `wx_actionlink` VALUES ('236', '2', '1394033989490', '大转盘', '幸运大转盘', '请点击进入抽奖活动页面，祝您好运！', '/YiWX/img/service/dazhuanpan01.jpg', '2014-12-11 16:58:11', 'http://www.vxinfeng.com/dazhuanpanwx.action?serviceid=8', '8', '6');
INSERT INTO `wx_actionlink` VALUES ('237', '2', '1394033989490', '大转盘', '幸运大转盘', '请点击进入抽奖活动页面，祝您好运！', '/YiWX/img/service/dazhuanpan01.jpg', '2014-12-11 17:35:36', 'http://www.vxinfeng.com/dazhuanpanwx.action?serviceid=9', '9', '6');
INSERT INTO `wx_actionlink` VALUES ('238', '2', '1394033989490', '大转盘', '幸运大转盘', '请点击进入抽奖活动页面，祝您好运！', '/YiWX/img/service/dazhuanpan01.jpg', '2014-12-11 17:36:20', 'http://www.vxinfeng.com/dazhuanpanwx.action?serviceid=10', '10', '6');
INSERT INTO `wx_actionlink` VALUES ('240', '2', '1394033989490', '大转盘', '幸运大转盘', '请点击进入抽奖活动页面，祝您好运！', '/YiWX/img/service/dazhuanpan01.jpg', '2014-12-11 17:45:16', 'http://www.vxinfeng.com/dazhuanpanwx.action?serviceid=11', '11', '6');
INSERT INTO `wx_actionlink` VALUES ('241', '2', '1394033989490', '大转盘', '幸运大转盘', '请点击进入抽奖活动页面，祝您好运！', '/YiWX/img/service/dazhuanpan01.jpg', '2014-12-11 18:21:31', 'http://www.vxinfeng.com/dazhuanpanwx.action?serviceid=12', '12', '6');
INSERT INTO `wx_actionlink` VALUES ('243', '2', '1394033989490', '刮刮卡', '幸运刮刮卡', '请点击进入刮奖活动页面，祝您好运！', '/YiWX/img/service/guaguaka01.jpg', '2015-01-13 13:10:14', 'http://www.vxinfeng.com/guaguakawx.action?serviceid=12', '12', '7');
INSERT INTO `wx_actionlink` VALUES ('244', '2', '1394033989490', '留影墙', '留影墙', '让这一刻定格!', '/YiWX/weixin/liuying/img/liuyingqiang.jpg', '2015-01-24 00:25:58', 'http://www.vxinfeng.com/liuyingwx.action?serviceid=1', '1', '10');
INSERT INTO `wx_actionlink` VALUES ('245', '2', '1394033989490', '会员卡', '微信会员卡112', '微信会员卡可以每日签到赚取积分,查看最新会员通知,特权以及积分兑换活动。', '/YiWX/weixin/member/image/menber_card.jpg', '2015-01-26 14:26:52', 'http://www.vxinfeng.com/memberwx.action?serviceid=28', '28', '2');

-- ----------------------------
-- Table structure for `wx_app`
-- ----------------------------
DROP TABLE IF EXISTS `wx_app`;
CREATE TABLE `wx_app` (
  `id` bigint(20) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '当前用户id',
  `wx_name` varchar(50) DEFAULT NULL COMMENT '公众号名称',
  `wx_id` varchar(50) DEFAULT NULL COMMENT '公众号原始ID',
  `wx_account` varchar(50) DEFAULT NULL COMMENT '微信号',
  `wx_header_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `wx_url` varchar(100) DEFAULT NULL,
  `wx_token` varchar(50) DEFAULT NULL,
  `wx_appkey` varchar(50) DEFAULT NULL,
  `wx_appsecret` varchar(50) DEFAULT NULL,
  `wx_type` int(1) DEFAULT NULL,
  `wx_verified` int(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

-- ----------------------------
-- Records of wx_app
-- ----------------------------
INSERT INTO `wx_app` VALUES ('1394452528697', '25', '我叫MT', '123', 'mtgonglve', '/YiWX/attached/image/1394033989490/20140310134500_575.jpg', 'http://www.vxinfeng.com/YiWX/api?t=MTM5NDQ1MjUyODY5Nw==', 'yiwx2014', '请输入AppId', '请输入AppSecret', '1', '1', '2014-03-10 19:55:59', '2014-03-10 19:55:59');
INSERT INTO `wx_app` VALUES ('1394033989490', '2', '微信名称A', 'gh_375df64175b8', '1232131', 'http://tp1.sinaimg.cn/2190350812/180/5646445894/1', 'http://www.vxinfeng.com/YiWX/api?t=MTM5NDAzMzk4OTQ5MA==', 'yiwx2014', 'wx2b0cf7f654d18c0d', '6104faeae2bcfabdd93b927872635f0b', '1', '1', '2014-03-05 23:40:11', '2015-01-22 15:09:30');

-- ----------------------------
-- Table structure for `wx_clock`
-- ----------------------------
DROP TABLE IF EXISTS `wx_clock`;
CREATE TABLE `wx_clock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL COMMENT '微信公众号',
  `keywords` varchar(50) DEFAULT NULL COMMENT '关键词',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  `isflextime` varchar(255) DEFAULT NULL,
  `clock_range` int(10) DEFAULT NULL,
  `send_mail` varchar(200) DEFAULT NULL,
  `send_mail_password` varchar(200) DEFAULT NULL,
  `receive_mail` varchar(200) DEFAULT NULL,
  `lbs_id` bigint(20) DEFAULT NULL COMMENT '门店ID',
  `createtime` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_clock
-- ----------------------------
INSERT INTO `wx_clock` VALUES ('16', '1394033989490', '打卡', '办公考勤', '/YiWX/weixin/clock/image/clock_card.png', '需要允许公众号使用你的地理位置,在公众号详情中打开提供位置信息即可。', '09:30', '18:30', '9.0', null, '1000', '', '', '', '6', '2014-07-29 14:39:02', '2014-08-07 21:05:39');

-- ----------------------------
-- Table structure for `wx_clock_department`
-- ----------------------------
DROP TABLE IF EXISTS `wx_clock_department`;
CREATE TABLE `wx_clock_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `leader` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_clock_department
-- ----------------------------
INSERT INTO `wx_clock_department` VALUES ('29', '16', '9', '产品', '2014-07-29 14:39:02', '2014-07-30 19:16:08');
INSERT INTO `wx_clock_department` VALUES ('31', '16', '0', '设计', '2014-07-30 19:16:22', '2014-08-01 16:33:30');
INSERT INTO `wx_clock_department` VALUES ('32', '16', '10', '技术', '2014-08-01 16:33:07', '2014-08-01 16:33:30');
INSERT INTO `wx_clock_department` VALUES ('33', '16', null, '财务', '2014-08-01 16:33:11', '2014-08-01 16:33:11');
INSERT INTO `wx_clock_department` VALUES ('34', '16', null, '总裁', '2014-08-01 16:33:17', '2014-08-01 16:33:17');

-- ----------------------------
-- Table structure for `wx_clock_info`
-- ----------------------------
DROP TABLE IF EXISTS `wx_clock_info`;
CREATE TABLE `wx_clock_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(50) DEFAULT NULL,
  `onwork_time` varchar(255) DEFAULT NULL,
  `onwork_remark` varchar(255) DEFAULT NULL,
  `offwork_time` varchar(255) DEFAULT NULL,
  `offwork_remark` varchar(255) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_clock_info
-- ----------------------------
INSERT INTO `wx_clock_info` VALUES ('24', '16', '12', '2014-08-07 21:30:44', null, '2014-08-07 21:31:47', null, null, '2014-08-07 21:30:44', '2014-08-07 21:31:47');
INSERT INTO `wx_clock_info` VALUES ('25', '16', '13', '2014-08-08 12:10:06', null, null, null, null, '2014-08-08 12:10:06', '2014-08-08 12:10:06');
INSERT INTO `wx_clock_info` VALUES ('26', '16', '14', '2014-08-08 12:15:55', null, null, null, null, '2014-08-08 12:15:55', '2014-08-08 12:15:55');

-- ----------------------------
-- Table structure for `wx_clock_user`
-- ----------------------------
DROP TABLE IF EXISTS `wx_clock_user`;
CREATE TABLE `wx_clock_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `openid` bigint(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `clockde_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_clock_user
-- ----------------------------
INSERT INTO `wx_clock_user` VALUES ('12', '16', '19', '夏奶茂', '1', '1984-10-21', '18211192625', 'xianaimao@hotspotnet.com', '32', '2014-08-07 21:30:18', '2014-08-07 21:30:18');
INSERT INTO `wx_clock_user` VALUES ('13', '16', '20', '测试', '1', '2013-01-2', '123456', '', '29', '2014-08-08 12:09:37', '2014-08-08 12:09:37');
INSERT INTO `wx_clock_user` VALUES ('14', '16', '21', '王博', '1', '1986-07-20', '18500451700', '', '32', '2014-08-08 12:13:23', '2014-08-08 12:13:23');

-- ----------------------------
-- Table structure for `wx_dazhuanpan`
-- ----------------------------
DROP TABLE IF EXISTS `wx_dazhuanpan`;
CREATE TABLE `wx_dazhuanpan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `starttime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `one_prize` varchar(255) DEFAULT NULL,
  `two_prize` varchar(255) DEFAULT NULL,
  `three_prize` varchar(255) DEFAULT NULL,
  `four_prize` varchar(255) DEFAULT NULL,
  `five_prize` varchar(255) DEFAULT NULL,
  `one_number` int(11) DEFAULT NULL,
  `two_number` int(11) DEFAULT NULL,
  `three_number` int(11) DEFAULT NULL,
  `four_number` int(11) DEFAULT NULL,
  `five_number` int(11) DEFAULT NULL,
  `isdisplay` int(11) DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `totaltime` int(11) DEFAULT NULL,
  `everydaytime` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `explain_service` varchar(255) DEFAULT NULL,
  `zhizhen_back` varchar(255) DEFAULT NULL,
  `zhuanpan_back` varchar(255) DEFAULT NULL,
  `iscontacttype` varchar(255) DEFAULT NULL,
  `contacttype` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_dazhuanpan
-- ----------------------------
INSERT INTO `wx_dazhuanpan` VALUES ('8', '1394033989490', '大转盘', '幸运大转盘', '/YiWX/img/service/dazhuanpan01.jpg', '请点击进入抽奖活动页面，祝您好运！', '1418288129', '1418892929', null, '1', '2', '3', '4', '5', '100', '100', '100', '100', '100', '1', '100', '100', '100', '11', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', null, '', '0', '手机号', '2014-12-11 16:56:01', '2014-12-11 16:58:11');
INSERT INTO `wx_dazhuanpan` VALUES ('9', '1394033989490', '大转盘', '幸运大转盘', '/YiWX/img/service/dazhuanpan01.jpg', '请点击进入抽奖活动页面，祝您好运！', '1418290491', '1418895291', null, '1', '', '', '', '', '2', '0', '0', '0', '0', '1', '3', '1', '1', '4', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '', '', '0', '手机号', '2014-12-11 17:35:36', null);
INSERT INTO `wx_dazhuanpan` VALUES ('10', '1394033989490', '大转盘', '幸运大转盘', '/YiWX/img/service/dazhuanpan01.jpg', '请点击进入抽奖活动页面，祝您好运！', '1418290559', '1418895359', null, '4', '', '', '', '', '5', '0', '0', '0', '0', '1', '5', '1', '1', '5', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '/YiWX/attached/image/2/20141211155918_823.jpg', '/YiWX/attached/image/2/20141211155918_823.jpg', '0', '手机号', '2014-12-11 17:36:19', null);
INSERT INTO `wx_dazhuanpan` VALUES ('11', '1394033989490', '大转盘', '幸运大转盘', '/YiWX/img/service/dazhuanpan01.jpg', '请点击进入抽奖活动页面，祝您好运！', '1418290654', '1418895454', null, '1', '3', '', '', '', '2', '4', '0', '0', '0', '1', '100', '1', '1', '455', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '/YiWX/attached/image/2/20141211173812_704.png', '/YiWX/attached/image/2/20141211173822_249.png', '0', '手机号', '2014-12-11 17:38:27', '2014-12-11 17:45:16');
INSERT INTO `wx_dazhuanpan` VALUES ('12', '1394033989490', '大转盘', '幸运大转盘', '/YiWX/img/service/dazhuanpan01.jpg', '请点击进入抽奖活动页面，祝您好运！', '1418293200', '2418898000', null, '100元代金券', '50元代金券', '20元代金券', '甜品任意一份', '鸡尾酒任意一份', '10', '10', '10', '10', '10', '1', '100', '10', '10', '666666', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '/YiWX/attached/image/2/20141211173812_704.png', '/YiWX/attached/image/2/20141211173822_249.png', '0', '手机号', '2014-12-11 18:21:31', null);

-- ----------------------------
-- Table structure for `wx_dazhuanpan_info`
-- ----------------------------
DROP TABLE IF EXISTS `wx_dazhuanpan_info`;
CREATE TABLE `wx_dazhuanpan_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `openid` bigint(50) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `todaytime` int(10) DEFAULT NULL,
  `totaltime` int(10) DEFAULT NULL,
  `prizetype` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_dazhuanpan_info
-- ----------------------------
INSERT INTO `wx_dazhuanpan_info` VALUES ('34', '12', '13', 'SN142112557134', null, '2014-12-18 18:25:49', null, '-1', '0', '0', '2');
INSERT INTO `wx_dazhuanpan_info` VALUES ('35', '12', '28', 'SN141889956635', null, '2014-12-18 18:30:48', null, '-1', '0', '0', '5');
INSERT INTO `wx_dazhuanpan_info` VALUES ('36', '12', '29', 'SN141890010936', null, '2014-12-18 18:55:36', null, '1', '1', '1', '2');
INSERT INTO `wx_dazhuanpan_info` VALUES ('37', '12', '30', 'SN141890042837', null, '2014-12-18 19:00:24', null, '-1', '0', '0', '1');

-- ----------------------------
-- Table structure for `wx_guaguaka`
-- ----------------------------
DROP TABLE IF EXISTS `wx_guaguaka`;
CREATE TABLE `wx_guaguaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `starttime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `one_prize` varchar(255) DEFAULT NULL,
  `two_prize` varchar(255) DEFAULT NULL,
  `three_prize` varchar(255) DEFAULT NULL,
  `four_prize` varchar(255) DEFAULT NULL,
  `five_prize` varchar(255) DEFAULT NULL,
  `one_number` int(11) DEFAULT NULL,
  `two_number` int(11) DEFAULT NULL,
  `three_number` int(11) DEFAULT NULL,
  `four_number` int(11) DEFAULT NULL,
  `five_number` int(11) DEFAULT NULL,
  `isdisplay` int(11) DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `totaltime` int(11) DEFAULT NULL,
  `everydaytime` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `explain_service` varchar(255) DEFAULT NULL,
  `contacttype` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_guaguaka
-- ----------------------------
INSERT INTO `wx_guaguaka` VALUES ('1', '1394033989490', '刮刮卡', '若兮刮刮卡', '/YiWX/img/service/guaguaka01.jpg', '', '1389863677', '1399863987', null, '宝马宝贝吗宝马宝贝吗宝马宝贝吗宝马宝贝吗', 'IPAD', '充值卡', '测试', null, '1', '5', '10', '2', '0', '1', '50', '10', '10', '666666', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您23兑奖码。', 'EMAIL', null, null);
INSERT INTO `wx_guaguaka` VALUES ('5', '1394033989490', '刮刮卡', '马上送红包', 'http://action.tenpay.com/res_action/2013/legua/img/card/card_b_13.jpg', '请点击进入刮刮奖活动页面，祝您好运！', '1390553230', '1390554000', null, '红包1000', '红包500', '', '', '', '10', '20', '0', '0', '0', '1', '30', '50', '20', '666666', '马上有礼', '微信号', null, '2014-03-17 21:27:10');
INSERT INTO `wx_guaguaka` VALUES ('9', '1394033989490', '刮刮卡cesces', '幸运刮刮卡cesces', 'http://ww1.sinaimg.cn/thumbnail/8a20733ejw1ecxvbuvk9aj20tn18g7de.jpg', '请点击进入刮cesces', '1390723243', '1391328043', null, '幸运刮刮卡ces', '', '', '', '', '12', '0', '0', '0', '0', '1', '22', '15', '10', 'cesces', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。cesces', '手机号cesces', '2014-01-26 16:01:06', '2014-06-25 17:39:39');
INSERT INTO `wx_guaguaka` VALUES ('10', '1394033989490', '刮刮卡', '幸运刮刮卡', '/YiWX/img/service/guaguaka01.jpg', '请点击进入刮奖活动页面，祝您好运！', '1405926512', '1406531312', null, '11', '', '', '', '', '33', '0', '0', '0', '0', '1', '20', '1', '1', '2', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '手机号', '2014-07-21 15:08:43', null);
INSERT INTO `wx_guaguaka` VALUES ('11', '1394033989490', '刮刮卡', '幸运刮刮卡', '/YiWX/img/service/guaguaka01.jpg', '请点击进入刮奖活动页面，祝您好运！', '1406024683', '1406629483', null, '33', '', '', '', '', '22', '0', '0', '0', '0', '1', '2', '1', '1', '23', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '手机号', '2014-07-22 18:24:49', null);
INSERT INTO `wx_guaguaka` VALUES ('12', '1394033989490', '刮刮卡', '幸运刮刮卡', '/YiWX/img/service/guaguaka01.jpg', '请点击进入刮奖活动页面，祝您好运！', '1421125805', '1421730605', null, '2', '', '', '', '', '3', '0', '0', '0', '0', '1', '5', '1', '1', '123', '线下活动请输入手机号后到现场领奖。线上活动请输入手机号后等待小编联系您，或者微信与我们取得联系并告知您的兑奖码。', '手机号', '2015-01-13 13:10:14', null);

-- ----------------------------
-- Table structure for `wx_guaguaka_info`
-- ----------------------------
DROP TABLE IF EXISTS `wx_guaguaka_info`;
CREATE TABLE `wx_guaguaka_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `openid` bigint(50) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `todaytime` int(10) DEFAULT NULL,
  `totaltime` int(10) DEFAULT NULL,
  `prizetype` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_guaguaka_info
-- ----------------------------
INSERT INTO `wx_guaguaka_info` VALUES ('1', '10', '15', 'SN14059300251', null, '2014-07-21 16:07:16', '2014-07-21 16:08:19', '2', '1', '1', '1');
INSERT INTO `wx_guaguaka_info` VALUES ('2', '10', '13', 'SN14062798472', null, '2014-07-25 17:17:28', null, '1', '1', '1', '1');
INSERT INTO `wx_guaguaka_info` VALUES ('3', '12', '13', null, null, '2015-01-13 13:10:26', null, '0', '1', '1', '0');

-- ----------------------------
-- Table structure for `wx_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `wx_keywords`;
CREATE TABLE `wx_keywords` (
  `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wx_uid` int(11) DEFAULT NULL COMMENT '用户id',
  `wx_app_keyid` bigint(20) DEFAULT NULL,
  `wx_keyword_createtime` datetime DEFAULT NULL,
  `wx_keyword_updatetime` datetime DEFAULT NULL,
  `wx_keyword_content` text,
  `wx_msg_type` int(1) DEFAULT NULL,
  `wx_msg_reply_type` int(1) DEFAULT NULL,
  `wx_msg_reply_text` text,
  `wx_msg_reply_template` bigint(20) DEFAULT NULL,
  `wx_keyword_rulename` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_keywords
-- ----------------------------
INSERT INTO `wx_keywords` VALUES ('106', '13', null, '2014-01-10 17:10:29', '2014-01-10 17:19:16', '', '1', '0', '123', '50', null);
INSERT INTO `wx_keywords` VALUES ('109', '13', '1389343059045', '2014-01-10 17:18:52', '2014-01-10 17:19:06', null, '0', '1', '', '50', null);
INSERT INTO `wx_keywords` VALUES ('111', '13', '1389343041371', '2014-01-10 17:19:58', '2014-01-10 17:19:58', '官网', '2', '2', '母鸡', '52', null);
INSERT INTO `wx_keywords` VALUES ('112', '13', '1389343041371', '2014-01-10 17:20:05', '2014-01-10 17:20:05', '官网', '2', '0', '你妈了比', '59', null);
INSERT INTO `wx_keywords` VALUES ('114', '13', '1389343041371', '2014-01-10 17:20:48', '2014-01-10 17:20:48', null, '2', '2', null, '50', 'ASD');
INSERT INTO `wx_keywords` VALUES ('140', '2', '1393436574758', '2014-02-27 02:19:08', '2014-02-27 16:42:06', '[{\"keywordName\":\"美女\"},{\"keywordName\":\"美女\"}]', '2', '1', null, '61', '123');
INSERT INTO `wx_keywords` VALUES ('141', '2', '1393436574758', '2014-02-27 02:55:21', '2014-02-27 03:43:35', '[{\"keywordName\":\"12\"}]', '2', '0', '[给力]黄[熊猫]', '0', '12');
INSERT INTO `wx_keywords` VALUES ('143', '2', '1393436574758', '2014-02-27 03:12:31', '2014-02-27 17:53:51', null, '1', '1', '', '62', null);
INSERT INTO `wx_keywords` VALUES ('145', '2', '1393436574758', '2014-02-27 03:25:45', '2014-02-27 13:42:57', '[{\"keywordName\":\"牛宝2\"},{\"keywordName\":\"21Q\"},{\"keywordName\":\"12213\"},{\"keywordName\":\"21as\"},{\"keywordName\":\"2121\"}]', '2', '0', '[浮云]', '0', '122333');
INSERT INTO `wx_keywords` VALUES ('146', '2', '13934365747581', '2014-02-27 03:26:32', '2014-02-27 03:32:51', '[{\"keywordName\":\"1221\"},{\"keywordName\":\"1221\"},{\"keywordName\":\"1221\"},{\"keywordName\":\"1221\"},{\"keywordName\":\"1221\"}]', '2', '1', null, '61', '21');
INSERT INTO `wx_keywords` VALUES ('152', '2', '13934365747581', '2014-02-27 03:44:21', '2014-02-27 03:44:21', '[{\"keywordName\":\"狗\"}]', '2', '0', '[给力]狗[围观]', '0', '狗');
INSERT INTO `wx_keywords` VALUES ('190', '13', '1393405754159', '2014-02-27 17:29:33', '2014-02-27 17:29:49', null, '0', '0', '3', '0', null);
INSERT INTO `wx_keywords` VALUES ('191', '13', '1393405754159', '2014-02-27 17:29:39', '2014-02-27 17:29:55', null, '1', '0', '3', '0', null);
INSERT INTO `wx_keywords` VALUES ('192', '2', '1394033989490', '2014-03-12 22:15:57', '2014-07-18 13:42:23', null, '0', '0', '各位。。MT微信公众平台升级中。。开发哥哥正在做功能开发与测试', '0', null);
INSERT INTO `wx_keywords` VALUES ('196', '2', '1394033989490', '2014-03-17 21:01:42', '2014-03-17 21:20:59', '[{\"keywordName\":\"图文\"}]', '2', '1', null, '92', '测试');
INSERT INTO `wx_keywords` VALUES ('197', '2', '1394033989490', '2014-04-04 16:40:39', '2015-01-22 18:57:45', null, '1', '0', 'bhh 44', '0', null);
INSERT INTO `wx_keywords` VALUES ('198', '2', '1394033989490', '2014-07-22 11:39:05', '2014-07-22 11:40:07', '[{\"keywordName\":\"1122\"}]', '2', '1', null, '91', '1122');

-- ----------------------------
-- Table structure for `wx_lbs`
-- ----------------------------
DROP TABLE IF EXISTS `wx_lbs`;
CREATE TABLE `wx_lbs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `isvip` varchar(5) DEFAULT NULL COMMENT '是否开启会员卡',
  `createtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_lbs
-- ----------------------------
INSERT INTO `wx_lbs` VALUES ('1', '1394033989490', '西直门站', 'http://tp1.sinaimg.cn/1684743184/50/5636803607/1', '汉堡不错。', '116.35975', '39.94747', '010-88888888', '北京市 海淀区 西大街海淀图书城籍海楼南侧 3W咖啡', '1', '2014-03-01 04:01:29');
INSERT INTO `wx_lbs` VALUES ('2', '1394033989490', '朝阳门站', 'http://tp1.sinaimg.cn/1684743184/50/5636803607/1', '东西贵', '116.44109', '39.930706', '12345678', '西直门凯德MALLA', '1', '2014-03-01 22:34:23');
INSERT INTO `wx_lbs` VALUES ('4', '1394033989490', '王府井站', '/YiWX/attached/image/20140302/20140302114459_837.jpg', '123', '116.41784', '39.914337', '哈哈', '123', '1', '2014-03-02 15:31:00');
INSERT INTO `wx_lbs` VALUES ('5', '1394033989490', '123', '/YiWX/attached/image/20140305/20140305002904_432.jpg', '123', '116.34665078321008', '39.980688420451536', '321', '123', '0', '2014-03-05 16:32:25');
INSERT INTO `wx_lbs` VALUES ('6', '1394033989490', '知春路', '/YiWX/attached/image/20140302/20140302114459_837.jpg', '知春路', '116.345312', '39.980306', '88888888', '北京市海淀区知春路甲48-3', '1', '2014-03-02 15:31:00');
INSERT INTO `wx_lbs` VALUES ('7', '1394033989490', '家', '/YiWX/attached/image/20140306/20140306113119_747.jpg', '123', '116.321625', '40.085999', '123', '北京市昌平区龙禧三街', '1', '2014-03-08 01:59:31');
INSERT INTO `wx_lbs` VALUES ('8', '1394452528697', '西直门 将太无二', 'http://t12.baidu.com/it/u=313502450,323693801&fm=58', '做料理的', '116.359958', '39.947379', '010-88888888', '北京市西城区西直门外大街1号院-3号', '1', '2014-03-10 20:00:31');

-- ----------------------------
-- Table structure for `wx_liuying`
-- ----------------------------
DROP TABLE IF EXISTS `wx_liuying`;
CREATE TABLE `wx_liuying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL COMMENT '微信公众号',
  `keywords` varchar(50) DEFAULT NULL COMMENT '关键词',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_liuying
-- ----------------------------
INSERT INTO `wx_liuying` VALUES ('1', '1394033989490', '留影墙', '留影墙', '/YiWX/weixin/liuying/img/liuyingqiang.jpg', '让这一刻定格!', '2015-01-24 00:25:58', '2015-01-24 00:25:58');

-- ----------------------------
-- Table structure for `wx_liuying_info`
-- ----------------------------
DROP TABLE IF EXISTS `wx_liuying_info`;
CREATE TABLE `wx_liuying_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `liuyan` varchar(255) DEFAULT NULL,
  `liuying` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_liuying_info
-- ----------------------------
INSERT INTO `wx_liuying_info` VALUES ('1', '123', '测试账号', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCblx65ia55VK8qicaKsNlCER0vJTZMgL00mJhkqKjiavy4Dvh8ee91BXZp0ica0ztUTIT8ged5AjYEyA/0', null, '/YiWX/attached/liuyanqiang/123/tcgbiXfCmxYsRdMLZaq_Hzvc-cLmFO84f_mRwWPWrAoFJbnS3L1QOjFeW0kPPUwG.jpg', '2015-01-28 16:37:38', '2015-01-28 16:37:38');

-- ----------------------------
-- Table structure for `wx_material`
-- ----------------------------
DROP TABLE IF EXISTS `wx_material`;
CREATE TABLE `wx_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wx_uid` int(11) DEFAULT NULL COMMENT '用户的ID',
  `wx_appkey_id` bigint(20) DEFAULT NULL COMMENT '用户的KEYID',
  `wx_material_length` int(4) unsigned zerofill DEFAULT NULL COMMENT '素材的长度',
  `wx_title` text COMMENT '标题',
  `wx_author` text COMMENT '作者',
  `wx_content` longtext COMMENT '内容的UUID路径',
  `wx_desc` text COMMENT '内容',
  `wx_img` text,
  `wx_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `wx_updatetime` datetime DEFAULT NULL,
  `wx_type` int(1) DEFAULT NULL,
  `wx_template_type` text,
  `wx_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_material
-- ----------------------------
INSERT INTO `wx_material` VALUES ('91', '2', '1394033989490', null, '单标题', 'ZZ', 'weqweqeqweq', 'ZY', 'http://ww4.sinaimg.cn/bmiddle/c3e87272jw1edug3lh09bj20g00m8jtk.jpg', '2014-03-17 21:00:14', '2014-03-17 21:03:12', '0', '', '文章');
INSERT INTO `wx_material` VALUES ('92', '2', '1394033989490', null, '[{\"title\":\"多图文\"},{\"title\":\"12321\"},{\"title\":\"TT2\"}]', '[{\"author\":\"zz\"},{\"author\":\"1231231\"},{\"author\":\"ZZ2\"}]', '[{\"content\":\"DADASDASDSADA <img src=\\\"http://tp1.sinaimg.cn/3630855784/50/5689307060/1\\\" /> aaaa\"},{\"content\":\"\"},{\"content\":\"\"}]', null, '[{\"img\":\"http://tp1.sinaimg.cn/3630855784/50/5689307060/1\"},{\"img\":\"http://ww1.sinaimg.cn/bmiddle/c3e87272jw1eeit4cwjvjj20go0m8tb2.jpg\"},{\"img\":\"http://ww4.sinaimg.cn/bmiddle/c3e87272jw1edug549gvoj20g60m8ta9.jpg\"}]', '2014-03-17 21:17:33', '2014-03-17 21:20:37', '1', '[{\"template_type\":\"文章\"},{\"template_type\":\"网址\"},{\"template_type\":\"应用\"}]', '[{\"link\":\"\"},{\"link\":\"http://www.baidu.com\"},{\"link\":\"http://115313937qq.eicp.net/YiWX/previewWebSite.action?appid=1394033989490\"}]');

-- ----------------------------
-- Table structure for `wx_member`
-- ----------------------------
DROP TABLE IF EXISTS `wx_member`;
CREATE TABLE `wx_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) DEFAULT NULL COMMENT '微信公众号',
  `keywords` varchar(50) DEFAULT NULL COMMENT '关键词',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc_service` varchar(255) DEFAULT NULL,
  `card_logo` varchar(255) DEFAULT NULL COMMENT '会员卡LOGO',
  `card_template` varchar(10) DEFAULT NULL COMMENT '会员卡模板',
  `card_name` varchar(50) DEFAULT NULL COMMENT '会员卡名称',
  `card_welcome` varchar(255) DEFAULT NULL COMMENT '新会员欢迎词',
  `card_explain` varchar(255) DEFAULT NULL COMMENT '会员卡说明',
  `card_yue` varchar(255) DEFAULT NULL COMMENT '预存余额规则',
  `card_new_yue` varchar(244) DEFAULT NULL COMMENT '开卡赠送余额',
  `card_jifen` varchar(255) DEFAULT NULL COMMENT '预存积分规则',
  `card_new_jifen` varchar(255) DEFAULT NULL COMMENT '开卡赠送积分',
  `card_rule_xiaofei` int(255) DEFAULT NULL COMMENT '消费赠送积分规则',
  `card_rule_zengsong` int(255) DEFAULT NULL COMMENT '消费赠送积分规则',
  `card_perfect_info` int(255) DEFAULT NULL COMMENT '完善信息赠送积分',
  `card_notice1` varchar(255) DEFAULT NULL,
  `card_notice1_content` varchar(500) DEFAULT NULL,
  `card_notice2` varchar(255) DEFAULT NULL,
  `card_notice2_content` varchar(500) DEFAULT NULL,
  `card_notice3` varchar(255) DEFAULT NULL,
  `card_notice3_content` varchar(500) DEFAULT NULL,
  `card_integral` varchar(10) DEFAULT NULL COMMENT '每日签到赠送积分',
  `card_contuine_integral` varchar(10) DEFAULT NULL COMMENT '连续签到7日 每日签到赠送积分',
  `card_color_name` varchar(50) DEFAULT NULL COMMENT '会员卡名字字体颜色',
  `card_color_number` varchar(50) DEFAULT NULL COMMENT '会员卡卡号字体颜色',
  `card_issupport` varchar(50) DEFAULT NULL COMMENT '是否支持实体会员卡',
  `card_type` varchar(255) DEFAULT NULL,
  `card_type_img` varchar(255) DEFAULT NULL,
  `card_issupport_check` varchar(50) DEFAULT NULL COMMENT '校验会员卡选项 1111格式',
  `createtime` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_member
-- ----------------------------
INSERT INTO `wx_member` VALUES ('28', '1394033989490', '会员卡', '微信会员卡112', '/YiWX/weixin/member/image/menber_card.jpg', '微信会员卡可以每日签到赚取积分,查看最新会员通知,特权以及积分兑换活动。', '/YiWX/attached/image/2/20140805220428_965.png', '6', '微信封会员卡', '会员尊享多种超值特权！', '', '', '0', '', '0', '100', '80', '20', '', '', '', '', '', '', '2', '0', '#a6a08b', '#847d64', '1', '1', '/YiWX/attached/image/2/20140807155959_67.png', '1000', '2014-08-05 21:52:30', '2015-01-26 14:26:52');

-- ----------------------------
-- Table structure for `wx_member_entitycard`
-- ----------------------------
DROP TABLE IF EXISTS `wx_member_entitycard`;
CREATE TABLE `wx_member_entitycard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL COMMENT '活动，会员卡ID	',
  `memberInfo_id` bigint(20) DEFAULT NULL,
  `card_id` varchar(50) DEFAULT NULL COMMENT '卡号',
  `card_password` varchar(50) DEFAULT NULL COMMENT '密码',
  `card_sex` varchar(50) DEFAULT NULL COMMENT '男女',
  `card_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `card_birthday` varchar(50) DEFAULT NULL COMMENT '生日',
  `card_tel` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `card_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `card_yue` varchar(50) DEFAULT NULL,
  `card_jifen` varchar(50) DEFAULT NULL,
  `card_used` varchar(50) DEFAULT NULL COMMENT '是否使用过0,1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_member_entitycard
-- ----------------------------
INSERT INTO `wx_member_entitycard` VALUES ('27', '28', null, 'N100001', '123456', null, null, null, null, null, '9500', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('28', '28', null, 'N100002', '', null, null, null, null, null, '19500', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('31', '28', null, 'N100004', '', null, null, null, null, null, '220', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('33', '28', null, 'B100005', '', null, null, null, null, null, '522', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('34', '28', null, 'B10', '', null, null, null, null, null, '532', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('35', '28', null, 'B1011', '', null, null, null, null, null, '533', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('36', '28', null, 'B101112', '', null, null, null, null, null, '534', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('37', '28', null, 'B10111213', '', null, null, null, null, null, '535', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('38', '28', null, 'B1011121314', '', null, null, null, null, null, '536', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('39', '28', null, 'B101112131415', '', null, null, null, null, null, '537', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('40', '28', null, 'B10111213141516', '', null, null, null, null, null, '538', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('41', '28', null, 'B1011121314151617', '', null, null, null, null, null, '539', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('42', '28', null, 'B101112131415161718', '', null, null, null, null, null, '540', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('43', '28', null, 'B10111213141516171819', '', null, null, null, null, null, '541', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('44', '28', null, 'B20', '', null, null, null, null, null, '542', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('45', '28', null, 'B21', '', null, null, null, null, null, '543', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('46', '28', null, 'B22', '', null, null, null, null, null, '544', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('47', '28', null, 'B23', '', null, null, null, null, null, '545', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('48', '28', null, 'B24', '', null, null, null, null, null, '546', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('49', '28', null, 'B25', '', null, null, null, null, null, '547', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('50', '28', null, 'B26', '', null, null, null, null, null, '548', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('51', '28', null, 'B27', '', null, null, null, null, null, '549', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('52', '28', null, 'B28', '', null, null, null, null, null, '550', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('53', '28', null, 'B29', '', null, null, null, null, null, '551', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('54', '28', null, 'B30', '', null, null, null, null, null, '552', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('55', '28', null, 'B31', '', null, null, null, null, null, '553', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('56', '28', null, 'B32', '', null, null, null, null, null, '554', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('57', '28', null, 'B33', '', null, null, null, null, null, '555', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('58', '28', null, 'B34', '', null, null, null, null, null, '556', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('59', '28', null, 'B35', '', null, null, null, null, null, '557', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('60', '28', null, 'B36', '', null, null, null, null, null, '558', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('61', '28', null, 'B37', '', null, null, null, null, null, '559', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('62', '28', null, 'B38', '', null, null, null, null, null, '560', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('63', '28', null, 'B39', '', null, null, null, null, null, '561', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('64', '28', null, 'B40', '', null, null, null, null, null, '562', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('65', '28', null, 'B41', '', null, null, null, null, null, '563', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('66', '28', null, 'B42', '', null, null, null, null, null, '564', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('67', '28', null, 'B43', '', null, null, null, null, null, '565', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('68', '28', null, 'B44', '', null, null, null, null, null, '566', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('69', '28', null, 'B45', '', null, null, null, null, null, '567', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('70', '28', null, 'B46', '', null, null, null, null, null, '568', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('71', '28', null, 'B47', '', null, null, null, null, null, '569', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('72', '28', null, 'B48', '', null, null, null, null, null, '570', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('73', '28', null, 'B49', '', null, null, null, null, null, '571', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('74', '28', null, 'B50', '', null, null, null, null, null, '572', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('75', '28', null, 'B51', '', null, null, null, null, null, '573', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('76', '28', null, 'B52', '', null, null, null, null, null, '574', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('77', '28', null, 'B53', '', null, null, null, null, null, '575', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('78', '28', null, 'B54', '', null, null, null, null, null, '576', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('79', '28', null, 'B55', '', null, null, null, null, null, '577', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('80', '28', null, 'B56', '', null, null, null, null, null, '578', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('81', '28', null, 'B57', '', null, null, null, null, null, '579', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('82', '28', null, 'B58', '', null, null, null, null, null, '580', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('83', '28', null, 'B59', '', null, null, null, null, null, '581', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('84', '28', null, 'B60', '', null, null, null, null, null, '582', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('85', '28', null, 'B61', '', null, null, null, null, null, '583', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('86', '28', null, 'B62', '', null, null, null, null, null, '584', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('87', '28', null, 'B63', '', null, null, null, null, null, '585', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('88', '28', null, 'B64', '', null, null, null, null, null, '586', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('89', '28', null, 'B65', '', null, null, null, null, null, '587', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('90', '28', null, 'B66', '', null, null, null, null, null, '588', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('91', '28', null, 'B67', '', null, null, null, null, null, '589', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('92', '28', null, 'B68', '', null, null, null, null, null, '590', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('93', '28', null, 'B69', '', null, null, null, null, null, '591', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('94', '28', null, 'B70', '', null, null, null, null, null, '592', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('95', '28', null, 'B71', '', null, null, null, null, null, '593', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('96', '28', null, 'B72', '', null, null, null, null, null, '594', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('97', '28', null, 'B73', '', null, null, null, null, null, '595', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('98', '28', null, 'B74', '', null, null, null, null, null, '596', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('99', '28', null, 'B75', '', null, null, null, null, null, '597', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('100', '28', null, 'B76', '', null, null, null, null, null, '598', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('101', '28', null, 'B77', '', null, null, null, null, null, '599', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('102', '28', null, 'B78', '', null, null, null, null, null, '600', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('103', '28', null, 'B79', '', null, null, null, null, null, '601', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('104', '28', null, 'B80', '', null, null, null, null, null, '602', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('105', '28', null, 'B81', '', null, null, null, null, null, '603', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('106', '28', null, 'B82', '', null, null, null, null, null, '604', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('107', '28', null, 'B83', '', null, null, null, null, null, '605', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('108', '28', null, 'B84', '', null, null, null, null, null, '606', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('109', '28', null, 'B85', '', null, null, null, null, null, '607', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('110', '28', null, 'B86', '', null, null, null, null, null, '608', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('111', '28', null, 'B87', '', null, null, null, null, null, '609', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('112', '28', null, 'B88', '', null, null, null, null, null, '610', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('113', '28', null, 'B89', '', null, null, null, null, null, '611', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('114', '28', null, 'B90', '', null, null, null, null, null, '612', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('115', '28', null, 'B91', '', null, null, null, null, null, '613', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('116', '28', null, 'B92', '', null, null, null, null, null, '614', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('117', '28', null, 'B93', '', null, null, null, null, null, '615', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('118', '28', null, 'B94', '', null, null, null, null, null, '616', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('119', '28', null, 'B95', '', null, null, null, null, null, '617', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('120', '28', null, 'B96', '', null, null, null, null, null, '618', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('121', '28', null, 'B97', '', null, null, null, null, null, '619', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('122', '28', null, 'B98', '', null, null, null, null, null, '620', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('123', '28', null, 'B99', '', null, null, null, null, null, '621', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('124', '28', null, 'B100', '', null, null, null, null, null, '622', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('125', '28', null, 'B101', '', null, null, null, null, null, '623', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('126', '28', null, 'B102', '', null, null, null, null, null, '624', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('127', '28', null, 'B103', '', null, null, null, null, null, '625', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('128', '28', null, 'B104', '', null, null, null, null, null, '626', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('129', '28', null, 'B105', '', null, null, null, null, null, '627', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('130', '28', null, 'B106', '', null, null, null, null, null, '628', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('131', '28', null, 'B107', '', null, null, null, null, null, '629', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('132', '28', null, 'B108', '', null, null, null, null, null, '630', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('133', '28', null, 'B109', '', null, null, null, null, null, '631', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('134', '28', null, 'B110', '', null, null, null, null, null, '632', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('135', '28', null, 'B111', '', null, null, null, null, null, '633', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('136', '28', null, 'B112', '', null, null, null, null, null, '634', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('137', '28', null, 'B113', '', null, null, null, null, null, '635', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('138', '28', null, 'B114', '', null, null, null, null, null, '636', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('139', '28', null, 'B115', '', null, null, null, null, null, '637', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('140', '28', null, 'B116', '', null, null, null, null, null, '638', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('141', '28', null, 'B117', '', null, null, null, null, null, '639', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('142', '28', null, 'B118', '', null, null, null, null, null, '640', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('143', '28', null, 'B119', '', null, null, null, null, null, '641', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('144', '28', null, 'B120', '', null, null, null, null, null, '642', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('145', '28', null, 'B121', '', null, null, null, null, null, '643', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('146', '28', null, 'B122', '', null, null, null, null, null, '644', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('147', '28', null, 'B123', '', null, null, null, null, null, '645', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('148', '28', null, 'B124', '', null, null, null, null, null, '646', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('149', '28', null, 'B125', '', null, null, null, null, null, '647', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('150', '28', null, 'B126', '', null, null, null, null, null, '648', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('151', '28', null, 'B127', '', null, null, null, null, null, '649', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('152', '28', null, 'B128', '', null, null, null, null, null, '650', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('153', '28', null, 'B129', '', null, null, null, null, null, '651', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('154', '28', null, 'B130', '', null, null, null, null, null, '652', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('155', '28', null, 'B131', '', null, null, null, null, null, '653', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('156', '28', null, 'B132', '', null, null, null, null, null, '654', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('157', '28', null, 'B133', '', null, null, null, null, null, '655', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('158', '28', null, 'B134', '', null, null, null, null, null, '656', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('159', '28', null, 'B135', '', null, null, null, null, null, '657', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('160', '28', null, 'B136', '', null, null, null, null, null, '658', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('161', '28', null, 'B137', '', null, null, null, null, null, '659', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('162', '28', null, 'B138', '', null, null, null, null, null, '660', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('163', '28', null, 'B139', '', null, null, null, null, null, '661', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('164', '28', null, 'B140', '', null, null, null, null, null, '662', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('165', '28', null, 'B141', '', null, null, null, null, null, '663', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('166', '28', null, 'B142', '', null, null, null, null, null, '664', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('167', '28', null, 'B143', '', null, null, null, null, null, '665', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('168', '28', null, 'B144', '', null, null, null, null, null, '666', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('169', '28', null, 'B145', '', null, null, null, null, null, '667', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('170', '28', null, 'B146', '', null, null, null, null, null, '668', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('171', '28', null, 'B147', '', null, null, null, null, null, '669', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('172', '28', null, 'B148', '', null, null, null, null, null, '670', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('173', '28', null, 'B149', '', null, null, null, null, null, '671', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('174', '28', null, 'B150', '', null, null, null, null, null, '672', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('175', '28', null, 'B151', '', null, null, null, null, null, '673', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('176', '28', null, 'B152', '', null, null, null, null, null, '674', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('177', '28', null, 'B153', '', null, null, null, null, null, '675', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('178', '28', null, 'B154', '', null, null, null, null, null, '676', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('179', '28', null, 'B155', '', null, null, null, null, null, '677', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('180', '28', null, 'B156', '', null, null, null, null, null, '678', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('181', '28', null, 'B157', '', null, null, null, null, null, '679', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('182', '28', null, 'B158', '', null, null, null, null, null, '680', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('183', '28', null, 'B159', '', null, null, null, null, null, '681', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('184', '28', null, 'B160', '', null, null, null, null, null, '682', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('185', '28', null, 'B161', '', null, null, null, null, null, '683', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('186', '28', null, 'B162', '', null, null, null, null, null, '684', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('187', '28', null, 'B163', '', null, null, null, null, null, '685', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('188', '28', null, 'B164', '', null, null, null, null, null, '686', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('189', '28', null, 'B165', '', null, null, null, null, null, '687', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('190', '28', null, 'B166', '', null, null, null, null, null, '688', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('191', '28', null, 'B167', '', null, null, null, null, null, '689', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('192', '28', null, 'B168', '', null, null, null, null, null, '690', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('193', '28', null, 'B169', '', null, null, null, null, null, '691', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('194', '28', null, 'B170', '', null, null, null, null, null, '692', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('195', '28', null, 'B171', '', null, null, null, null, null, '693', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('196', '28', null, 'B172', '', null, null, null, null, null, '694', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('197', '28', null, 'B173', '', null, null, null, null, null, '695', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('198', '28', null, 'B174', '', null, null, null, null, null, '696', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('199', '28', null, 'B175', '', null, null, null, null, null, '697', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('200', '28', null, 'B176', '', null, null, null, null, null, '698', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('201', '28', null, 'B177', '', null, null, null, null, null, '699', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('202', '28', null, 'B178', '', null, null, null, null, null, '700', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('203', '28', null, 'B179', '', null, null, null, null, null, '701', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('204', '28', null, 'B180', '', null, null, null, null, null, '702', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('205', '28', null, 'B181', '', null, null, null, null, null, '703', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('206', '28', null, 'B182', '', null, null, null, null, null, '704', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('207', '28', null, 'B183', '', null, null, null, null, null, '705', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('208', '28', null, 'B184', '', null, null, null, null, null, '706', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('209', '28', null, 'B185', '', null, null, null, null, null, '707', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('210', '28', null, 'B186', '', null, null, null, null, null, '708', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('211', '28', null, 'B187', '', null, null, null, null, null, '709', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('212', '28', null, 'B188', '', null, null, null, null, null, '710', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('213', '28', null, 'B189', '', null, null, null, null, null, '711', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('214', '28', null, 'B190', '', null, null, null, null, null, '712', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('215', '28', null, 'B191', '', null, null, null, null, null, '713', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('216', '28', null, 'B192', '', null, null, null, null, null, '714', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('217', '28', null, 'B193', '', null, null, null, null, null, '715', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('218', '28', null, 'B194', '', null, null, null, null, null, '716', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('219', '28', null, 'B195', '', null, null, null, null, null, '717', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('220', '28', null, 'B196', '', null, null, null, null, null, '718', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('221', '28', null, 'B197', '', null, null, null, null, null, '719', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('222', '28', null, 'B198', '', null, null, null, null, null, '720', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('223', '28', null, 'B199', '', null, null, null, null, null, '721', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('224', '28', null, 'B200', '', null, null, null, null, null, '722', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('225', '28', null, 'B201', '', null, null, null, null, null, '723', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('226', '28', null, 'B202', '', null, null, null, null, null, '724', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('227', '28', null, 'B203', '', null, null, null, null, null, '725', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('228', '28', null, 'B204', '', null, null, null, null, null, '726', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('229', '28', null, 'B205', '', null, null, null, null, null, '727', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('230', '28', null, 'B206', '', null, null, null, null, null, '728', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('231', '28', null, 'B207', '', null, null, null, null, null, '729', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('232', '28', null, 'B208', '', null, null, null, null, null, '730', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('233', '28', null, 'B209', '', null, null, null, null, null, '731', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('234', '28', null, 'B210', '', null, null, null, null, null, '732', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('235', '28', null, 'B211', '', null, null, null, null, null, '733', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('236', '28', null, 'B212', '', null, null, null, null, null, '734', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('237', '28', null, 'B213', '', null, null, null, null, null, '735', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('238', '28', null, 'B214', '', null, null, null, null, null, '736', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('239', '28', null, 'B215', '', null, null, null, null, null, '737', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('240', '28', null, 'B216', '', null, null, null, null, null, '738', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('241', '28', null, 'B217', '', null, null, null, null, null, '739', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('242', '28', null, 'B218', '', null, null, null, null, null, '740', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('243', '28', null, 'B219', '', null, null, null, null, null, '741', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('244', '28', null, 'B220', '', null, null, null, null, null, '742', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('245', '28', null, 'B221', '', null, null, null, null, null, '743', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('246', '28', null, 'B222', '', null, null, null, null, null, '744', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('247', '28', null, 'B223', '', null, null, null, null, null, '745', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('248', '28', null, 'B224', '', null, null, null, null, null, '746', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('249', '28', null, 'B225', '', null, null, null, null, null, '747', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('250', '28', null, 'B226', '', null, null, null, null, null, '748', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('251', '28', null, 'B227', '', null, null, null, null, null, '749', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('252', '28', null, 'B228', '', null, null, null, null, null, '750', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('253', '28', null, 'B229', '', null, null, null, null, null, '751', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('254', '28', null, 'B230', '', null, null, null, null, null, '752', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('255', '28', null, 'B231', '', null, null, null, null, null, '753', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('256', '28', null, 'B232', '', null, null, null, null, null, '754', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('257', '28', null, 'B233', '', null, null, null, null, null, '755', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('258', '28', null, 'B234', '', null, null, null, null, null, '756', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('259', '28', null, 'B235', '', null, null, null, null, null, '757', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('260', '28', null, 'B236', '', null, null, null, null, null, '758', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('261', '28', null, 'B237', '', null, null, null, null, null, '759', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('262', '28', null, 'B238', '', null, null, null, null, null, '760', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('263', '28', null, 'B239', '', null, null, null, null, null, '761', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('264', '28', null, 'B240', '', null, null, null, null, null, '762', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('265', '28', null, 'B241', '', null, null, null, null, null, '763', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('266', '28', null, 'B242', '', null, null, null, null, null, '764', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('267', '28', null, 'B243', '', null, null, null, null, null, '765', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('268', '28', null, 'B244', '', null, null, null, null, null, '766', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('269', '28', null, 'B245', '', null, null, null, null, null, '767', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('270', '28', null, 'B246', '', null, null, null, null, null, '768', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('271', '28', null, 'B247', '', null, null, null, null, null, '769', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('272', '28', null, 'B248', '', null, null, null, null, null, '770', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('273', '28', null, 'B249', '', null, null, null, null, null, '771', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('274', '28', null, 'B250', '', null, null, null, null, null, '772', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('275', '28', null, 'B251', '', null, null, null, null, null, '773', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('276', '28', null, 'B252', '', null, null, null, null, null, '774', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('277', '28', null, 'B253', '', null, null, null, null, null, '775', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('278', '28', null, 'B254', '', null, null, null, null, null, '776', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('279', '28', null, 'B255', '', null, null, null, null, null, '777', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('280', '28', null, 'B256', '', null, null, null, null, null, '778', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('281', '28', null, 'B257', '', null, null, null, null, null, '779', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('282', '28', null, 'B258', '', null, null, null, null, null, '780', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('283', '28', null, 'B259', '', null, null, null, null, null, '781', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('284', '28', null, 'B260', '', null, null, null, null, null, '782', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('285', '28', null, 'B261', '', null, null, null, null, null, '783', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('286', '28', null, 'B262', '', null, null, null, null, null, '784', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('287', '28', null, 'B263', '', null, null, null, null, null, '785', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('288', '28', null, 'B264', '', null, null, null, null, null, '786', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('289', '28', null, 'B265', '', null, null, null, null, null, '787', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('290', '28', null, 'B266', '', null, null, null, null, null, '788', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('291', '28', null, 'B267', '', null, null, null, null, null, '789', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('292', '28', null, 'B268', '', null, null, null, null, null, '790', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('293', '28', null, 'B269', '', null, null, null, null, null, '791', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('294', '28', null, 'B270', '', null, null, null, null, null, '792', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('295', '28', null, 'B271', '', null, null, null, null, null, '793', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('296', '28', null, 'B272', '', null, null, null, null, null, '794', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('297', '28', null, 'B273', '', null, null, null, null, null, '795', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('298', '28', null, 'B274', '', null, null, null, null, null, '796', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('299', '28', null, 'B275', '', null, null, null, null, null, '797', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('300', '28', null, 'B276', '', null, null, null, null, null, '798', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('301', '28', null, 'B277', '', null, null, null, null, null, '799', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('302', '28', null, 'B278', '', null, null, null, null, null, '800', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('303', '28', null, 'B279', '', null, null, null, null, null, '801', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('304', '28', null, 'B280', '', null, null, null, null, null, '802', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('305', '28', null, 'B281', '', null, null, null, null, null, '803', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('306', '28', null, 'B282', '', null, null, null, null, null, '804', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('307', '28', null, 'B283', '', null, null, null, null, null, '805', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('308', '28', null, 'B284', '', null, null, null, null, null, '806', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('309', '28', null, 'B285', '', null, null, null, null, null, '807', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('310', '28', null, 'B286', '', null, null, null, null, null, '808', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('311', '28', null, 'B287', '', null, null, null, null, null, '809', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('312', '28', null, 'B288', '', null, null, null, null, null, '810', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('313', '28', null, 'B289', '', null, null, null, null, null, '811', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('314', '28', null, 'B290', '', null, null, null, null, null, '812', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('315', '28', null, 'B291', '', null, null, null, null, null, '813', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('316', '28', null, 'B292', '', null, null, null, null, null, '814', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('317', '28', null, 'B293', '', null, null, null, null, null, '815', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('318', '28', null, 'B294', '', null, null, null, null, null, '816', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('319', '28', null, 'B295', '', null, null, null, null, null, '817', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('320', '28', null, 'B296', '', null, null, null, null, null, '818', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('321', '28', null, 'B297', '', null, null, null, null, null, '819', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('322', '28', null, 'B298', '', null, null, null, null, null, '820', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('323', '28', null, 'B299', '', null, null, null, null, null, '821', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('324', '28', null, 'B300', '', null, null, null, null, null, '822', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('325', '28', null, 'B301', '', null, null, null, null, null, '823', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('326', '28', null, 'B302', '', null, null, null, null, null, '824', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('327', '28', null, 'B303', '', null, null, null, null, null, '825', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('328', '28', null, 'B304', '', null, null, null, null, null, '826', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('329', '28', null, 'B305', '', null, null, null, null, null, '827', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('330', '28', null, 'B306', '', null, null, null, null, null, '828', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('331', '28', null, 'B307', '', null, null, null, null, null, '829', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('332', '28', null, 'B308', '', null, null, null, null, null, '830', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('333', '28', null, 'B309', '', null, null, null, null, null, '831', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('334', '28', null, 'B310', '', null, null, null, null, null, '832', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('335', '28', null, 'B311', '', null, null, null, null, null, '833', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('336', '28', null, 'B312', '', null, null, null, null, null, '834', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('337', '28', null, 'B313', '', null, null, null, null, null, '835', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('338', '28', null, 'B314', '', null, null, null, null, null, '836', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('339', '28', null, 'B315', '', null, null, null, null, null, '837', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('340', '28', null, 'B316', '', null, null, null, null, null, '838', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('341', '28', null, 'B317', '', null, null, null, null, null, '839', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('342', '28', null, 'B318', '', null, null, null, null, null, '840', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('343', '28', null, 'B319', '', null, null, null, null, null, '841', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('344', '28', null, 'B320', '', null, null, null, null, null, '842', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('345', '28', null, 'B321', '', null, null, null, null, null, '843', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('346', '28', null, 'B322', '', null, null, null, null, null, '844', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('347', '28', null, 'B323', '', null, null, null, null, null, '845', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('348', '28', null, 'B324', '', null, null, null, null, null, '846', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('349', '28', null, 'B325', '', null, null, null, null, null, '847', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('350', '28', null, 'B326', '', null, null, null, null, null, '848', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('351', '28', null, 'B327', '', null, null, null, null, null, '849', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('352', '28', null, 'B328', '', null, null, null, null, null, '850', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('353', '28', null, 'B329', '', null, null, null, null, null, '851', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('354', '28', null, 'B330', '', null, null, null, null, null, '852', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('355', '28', null, 'B331', '', null, null, null, null, null, '853', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('356', '28', null, 'B332', '', null, null, null, null, null, '854', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('357', '28', null, 'B333', '', null, null, null, null, null, '855', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('358', '28', null, 'B334', '', null, null, null, null, null, '856', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('359', '28', null, 'B335', '', null, null, null, null, null, '857', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('360', '28', null, 'B336', '', null, null, null, null, null, '858', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('361', '28', null, 'B337', '', null, null, null, null, null, '859', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('362', '28', null, 'B338', '', null, null, null, null, null, '860', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('363', '28', null, 'B339', '', null, null, null, null, null, '861', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('364', '28', null, 'B340', '', null, null, null, null, null, '862', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('365', '28', null, 'B341', '', null, null, null, null, null, '863', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('366', '28', null, 'B342', '', null, null, null, null, null, '864', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('367', '28', null, 'B343', '', null, null, null, null, null, '865', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('368', '28', null, 'B344', '', null, null, null, null, null, '866', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('369', '28', null, 'B345', '', null, null, null, null, null, '867', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('370', '28', null, 'B346', '', null, null, null, null, null, '868', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('371', '28', null, 'B347', '', null, null, null, null, null, '869', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('372', '28', null, 'B348', '', null, null, null, null, null, '870', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('373', '28', null, 'B349', '', null, null, null, null, null, '871', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('374', '28', null, 'B350', '', null, null, null, null, null, '872', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('375', '28', null, 'B351', '', null, null, null, null, null, '873', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('376', '28', null, 'B352', '', null, null, null, null, null, '874', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('377', '28', null, 'B353', '', null, null, null, null, null, '875', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('378', '28', null, 'B354', '', null, null, null, null, null, '876', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('379', '28', null, 'B355', '', null, null, null, null, null, '877', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('380', '28', null, 'B356', '', null, null, null, null, null, '878', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('381', '28', null, 'B357', '', null, null, null, null, null, '879', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('382', '28', null, 'B358', '', null, null, null, null, null, '880', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('383', '28', null, 'B359', '', null, null, null, null, null, '881', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('384', '28', null, 'B360', '', null, null, null, null, null, '882', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('385', '28', null, 'B361', '', null, null, null, null, null, '883', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('386', '28', null, 'B362', '', null, null, null, null, null, '884', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('387', '28', null, 'B363', '', null, null, null, null, null, '885', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('388', '28', null, 'B364', '', null, null, null, null, null, '886', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('389', '28', null, 'B365', '', null, null, null, null, null, '887', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('390', '28', null, 'B366', '', null, null, null, null, null, '888', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('391', '28', null, 'B367', '', null, null, null, null, null, '889', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('392', '28', null, 'B368', '', null, null, null, null, null, '890', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('393', '28', null, 'B369', '', null, null, null, null, null, '891', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('394', '28', null, 'B370', '', null, null, null, null, null, '892', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('395', '28', null, 'B371', '', null, null, null, null, null, '893', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('396', '28', null, 'B372', '', null, null, null, null, null, '894', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('397', '28', null, 'B373', '', null, null, null, null, null, '895', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('398', '28', null, 'B374', '', null, null, null, null, null, '896', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('399', '28', null, 'B375', '', null, null, null, null, null, '897', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('400', '28', null, 'B376', '', null, null, null, null, null, '898', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('401', '28', null, 'B377', '', null, null, null, null, null, '899', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('402', '28', null, 'B378', '', null, null, null, null, null, '900', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('403', '28', null, 'B379', '', null, null, null, null, null, '901', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('404', '28', null, 'B380', '', null, null, null, null, null, '902', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('405', '28', null, 'B381', '', null, null, null, null, null, '903', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('406', '28', null, 'B382', '', null, null, null, null, null, '904', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('407', '28', null, 'B383', '', null, null, null, null, null, '905', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('408', '28', null, 'B384', '', null, null, null, null, null, '906', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('409', '28', null, 'B385', '', null, null, null, null, null, '907', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('410', '28', null, 'B386', '', null, null, null, null, null, '908', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('411', '28', null, 'B387', '', null, null, null, null, null, '909', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('412', '28', null, 'B388', '', null, null, null, null, null, '910', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('413', '28', null, 'B389', '', null, null, null, null, null, '911', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('414', '28', null, 'B390', '', null, null, null, null, null, '912', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('415', '28', null, 'B391', '', null, null, null, null, null, '913', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('416', '28', null, 'B392', '', null, null, null, null, null, '914', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('417', '28', null, 'B393', '', null, null, null, null, null, '915', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('418', '28', null, 'B394', '', null, null, null, null, null, '916', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('419', '28', null, 'B395', '', null, null, null, null, null, '917', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('420', '28', null, 'B396', '', null, null, null, null, null, '918', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('421', '28', null, 'B397', '', null, null, null, null, null, '919', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('422', '28', null, 'B398', '', null, null, null, null, null, '920', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('423', '28', null, 'B399', '', null, null, null, null, null, '921', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('424', '28', null, 'B400', '', null, null, null, null, null, '922', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('425', '28', null, 'B401', '', null, null, null, null, null, '923', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('426', '28', null, 'B402', '', null, null, null, null, null, '924', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('427', '28', null, 'B403', '', null, null, null, null, null, '925', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('428', '28', null, 'B404', '', null, null, null, null, null, '926', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('429', '28', null, 'B405', '', null, null, null, null, null, '927', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('430', '28', null, 'B406', '', null, null, null, null, null, '928', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('431', '28', null, 'B407', '', null, null, null, null, null, '929', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('432', '28', null, 'B408', '', null, null, null, null, null, '930', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('433', '28', null, 'B409', '', null, null, null, null, null, '931', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('434', '28', null, 'B410', '', null, null, null, null, null, '932', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('435', '28', null, 'B411', '', null, null, null, null, null, '933', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('436', '28', null, 'B412', '', null, null, null, null, null, '934', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('437', '28', null, 'B413', '', null, null, null, null, null, '935', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('438', '28', null, 'B414', '', null, null, null, null, null, '936', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('439', '28', null, 'B415', '', null, null, null, null, null, '937', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('440', '28', null, 'B416', '', null, null, null, null, null, '938', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('441', '28', null, 'B417', '', null, null, null, null, null, '939', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('442', '28', null, 'B418', '', null, null, null, null, null, '940', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('443', '28', null, 'B419', '', null, null, null, null, null, '941', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('444', '28', null, 'B420', '', null, null, null, null, null, '942', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('445', '28', null, 'B421', '', null, null, null, null, null, '943', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('446', '28', null, 'B422', '', null, null, null, null, null, '944', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('447', '28', null, 'B423', '', null, null, null, null, null, '945', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('448', '28', null, 'B424', '', null, null, null, null, null, '946', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('449', '28', null, 'B425', '', null, null, null, null, null, '947', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('450', '28', null, 'B426', '', null, null, null, null, null, '948', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('451', '28', null, 'B427', '', null, null, null, null, null, '949', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('452', '28', null, 'B428', '', null, null, null, null, null, '950', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('453', '28', null, 'B429', '', null, null, null, null, null, '951', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('454', '28', null, 'B430', '', null, null, null, null, null, '952', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('455', '28', null, 'B431', '', null, null, null, null, null, '953', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('456', '28', null, 'B432', '', null, null, null, null, null, '954', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('457', '28', null, 'B433', '', null, null, null, null, null, '955', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('458', '28', null, 'B434', '', null, null, null, null, null, '956', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('459', '28', null, 'B435', '', null, null, null, null, null, '957', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('460', '28', null, 'B436', '', null, null, null, null, null, '958', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('461', '28', null, 'B437', '', null, null, null, null, null, '959', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('462', '28', null, 'B438', '', null, null, null, null, null, '960', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('463', '28', null, 'B439', '', null, null, null, null, null, '961', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('464', '28', null, 'B440', '', null, null, null, null, null, '962', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('465', '28', null, 'B441', '', null, null, null, null, null, '963', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('466', '28', null, 'B442', '', null, null, null, null, null, '964', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('467', '28', null, 'B443', '', null, null, null, null, null, '965', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('468', '28', null, 'B444', '', null, null, null, null, null, '966', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('469', '28', null, 'B445', '', null, null, null, null, null, '967', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('470', '28', null, 'B446', '', null, null, null, null, null, '968', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('471', '28', null, 'B447', '', null, null, null, null, null, '969', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('472', '28', null, 'B448', '', null, null, null, null, null, '970', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('473', '28', null, 'B449', '', null, null, null, null, null, '971', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('474', '28', null, 'B450', '', null, null, null, null, null, '972', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('475', '28', null, 'B451', '', null, null, null, null, null, '973', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('476', '28', null, 'B452', '', null, null, null, null, null, '974', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('477', '28', null, 'B453', '', null, null, null, null, null, '975', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('478', '28', null, 'B454', '', null, null, null, null, null, '976', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('479', '28', null, 'B455', '', null, null, null, null, null, '977', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('480', '28', null, 'B456', '', null, null, null, null, null, '978', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('481', '28', null, 'B457', '', null, null, null, null, null, '979', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('482', '28', null, 'B458', '', null, null, null, null, null, '980', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('483', '28', null, 'B459', '', null, null, null, null, null, '981', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('484', '28', null, 'B460', '', null, null, null, null, null, '982', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('485', '28', null, 'B461', '', null, null, null, null, null, '983', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('486', '28', null, 'B462', '', null, null, null, null, null, '984', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('487', '28', null, 'B463', '', null, null, null, null, null, '985', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('488', '28', null, 'B464', '', null, null, null, null, null, '986', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('489', '28', null, 'B465', '', null, null, null, null, null, '987', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('490', '28', null, 'B466', '', null, null, null, null, null, '988', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('491', '28', null, 'B467', '', null, null, null, null, null, '989', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('492', '28', null, 'B468', '', null, null, null, null, null, '990', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('493', '28', null, 'B469', '', null, null, null, null, null, '991', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('494', '28', null, 'B470', '', null, null, null, null, null, '992', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('495', '28', null, 'B471', '', null, null, null, null, null, '993', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('496', '28', null, 'B472', '', null, null, null, null, null, '994', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('497', '28', null, 'B473', '', null, null, null, null, null, '995', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('498', '28', null, 'B474', '', null, null, null, null, null, '996', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('499', '28', null, 'B475', '', null, null, null, null, null, '997', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('500', '28', null, 'B476', '', null, null, null, null, null, '998', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('501', '28', null, 'B477', '', null, null, null, null, null, '999', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('502', '28', null, 'B478', '', null, null, null, null, null, '1000', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('503', '28', null, 'B479', '', null, null, null, null, null, '1001', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('504', '28', null, 'B480', '', null, null, null, null, null, '1002', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('505', '28', null, 'B481', '', null, null, null, null, null, '1003', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('506', '28', null, 'B482', '', null, null, null, null, null, '1004', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('507', '28', null, 'B483', '', null, null, null, null, null, '1005', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('508', '28', null, 'B484', '', null, null, null, null, null, '1006', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('509', '28', null, 'B485', '', null, null, null, null, null, '1007', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('510', '28', null, 'B486', '', null, null, null, null, null, '1008', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('511', '28', null, 'B487', '', null, null, null, null, null, '1009', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('512', '28', null, 'B488', '', null, null, null, null, null, '1010', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('513', '28', null, 'B489', '', null, null, null, null, null, '1011', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('514', '28', null, 'B490', '', null, null, null, null, null, '1012', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('515', '28', null, 'B491', '', null, null, null, null, null, '1013', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('516', '28', null, 'B492', '', null, null, null, null, null, '1014', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('517', '28', null, 'B493', '', null, null, null, null, null, '1015', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('518', '28', null, 'B494', '', null, null, null, null, null, '1016', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('519', '28', null, 'B495', '', null, null, null, null, null, '1017', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('520', '28', null, 'B496', '', null, null, null, null, null, '1018', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('521', '28', null, 'B497', '', null, null, null, null, null, '1019', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('522', '28', null, 'B498', '', null, null, null, null, null, '1020', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('523', '28', null, 'B499', '', null, null, null, null, null, '1021', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('524', '28', null, 'B500', '', null, null, null, null, null, '1022', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('525', '28', null, 'B501', '', null, null, null, null, null, '1023', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('526', '28', null, 'B502', '', null, null, null, null, null, '1024', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('527', '28', null, 'B503', '', null, null, null, null, null, '1025', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('528', '28', null, 'B504', '', null, null, null, null, null, '1026', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('529', '28', null, 'B505', '', null, null, null, null, null, '1027', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('530', '28', null, 'B506', '', null, null, null, null, null, '1028', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('531', '28', null, 'B507', '', null, null, null, null, null, '1029', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('532', '28', null, 'B508', '', null, null, null, null, null, '1030', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('533', '28', null, 'B509', '', null, null, null, null, null, '1031', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('534', '28', null, 'B510', '', null, null, null, null, null, '1032', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('535', '28', null, 'B511', '', null, null, null, null, null, '1033', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('536', '28', null, 'B512', '', null, null, null, null, null, '1034', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('537', '28', null, 'B513', '', null, null, null, null, null, '1035', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('538', '28', null, 'B514', '', null, null, null, null, null, '1036', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('539', '28', null, 'B515', '', null, null, null, null, null, '1037', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('540', '28', null, 'B516', '', null, null, null, null, null, '1038', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('541', '28', null, 'B517', '', null, null, null, null, null, '1039', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('542', '28', null, 'B518', '', null, null, null, null, null, '1040', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('543', '28', null, 'B519', '', null, null, null, null, null, '1041', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('544', '28', null, 'B520', '', null, null, null, null, null, '1042', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('545', '28', null, 'B521', '', null, null, null, null, null, '1043', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('546', '28', null, 'B522', '', null, null, null, null, null, '1044', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('547', '28', null, 'B523', '', null, null, null, null, null, '1045', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('548', '28', null, 'B524', '', null, null, null, null, null, '1046', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('549', '28', null, 'B525', '', null, null, null, null, null, '1047', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('550', '28', null, 'B526', '', null, null, null, null, null, '1048', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('551', '28', null, 'B527', '', null, null, null, null, null, '1049', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('552', '28', null, 'B528', '', null, null, null, null, null, '1050', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('553', '28', null, 'B529', '', null, null, null, null, null, '1051', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('554', '28', null, 'B530', '', null, null, null, null, null, '1052', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('555', '28', null, 'B531', '', null, null, null, null, null, '1053', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('556', '28', null, 'B532', '', null, null, null, null, null, '1054', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('557', '28', null, 'B533', '', null, null, null, null, null, '1055', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('558', '28', null, 'B534', '', null, null, null, null, null, '1056', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('559', '28', null, 'B535', '', null, null, null, null, null, '1057', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('560', '28', null, 'B536', '', null, null, null, null, null, '1058', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('561', '28', null, 'B537', '', null, null, null, null, null, '1059', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('562', '28', null, 'B538', '', null, null, null, null, null, '1060', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('563', '28', null, 'B539', '', null, null, null, null, null, '1061', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('564', '28', null, 'B540', '', null, null, null, null, null, '1062', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('565', '28', null, 'B541', '', null, null, null, null, null, '1063', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('566', '28', null, 'B542', '', null, null, null, null, null, '1064', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('567', '28', null, 'B543', '', null, null, null, null, null, '1065', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('568', '28', null, 'B544', '', null, null, null, null, null, '1066', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('569', '28', null, 'B545', '', null, null, null, null, null, '1067', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('570', '28', null, 'B546', '', null, null, null, null, null, '1068', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('571', '28', null, 'B547', '', null, null, null, null, null, '1069', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('572', '28', null, 'B548', '', null, null, null, null, null, '1070', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('573', '28', null, 'B549', '', null, null, null, null, null, '1071', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('574', '28', null, 'B550', '', null, null, null, null, null, '1072', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('575', '28', null, 'B551', '', null, null, null, null, null, '1073', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('576', '28', null, 'B552', '', null, null, null, null, null, '1074', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('577', '28', null, 'B553', '', null, null, null, null, null, '1075', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('578', '28', null, 'B554', '', null, null, null, null, null, '1076', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('579', '28', null, 'B555', '', null, null, null, null, null, '1077', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('580', '28', null, 'B556', '', null, null, null, null, null, '1078', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('581', '28', null, 'B557', '', null, null, null, null, null, '1079', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('582', '28', null, 'B558', '', null, null, null, null, null, '1080', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('583', '28', null, 'B559', '', null, null, null, null, null, '1081', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('584', '28', null, 'B560', '', null, null, null, null, null, '1082', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('585', '28', null, 'B561', '', null, null, null, null, null, '1083', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('586', '28', null, 'B562', '', null, null, null, null, null, '1084', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('587', '28', null, 'B563', '', null, null, null, null, null, '1085', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('588', '28', null, 'B564', '', null, null, null, null, null, '1086', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('589', '28', null, 'B565', '', null, null, null, null, null, '1087', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('590', '28', null, 'B566', '', null, null, null, null, null, '1088', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('591', '28', null, 'B567', '', null, null, null, null, null, '1089', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('592', '28', null, 'B568', '', null, null, null, null, null, '1090', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('593', '28', null, 'B569', '', null, null, null, null, null, '1091', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('594', '28', null, 'B570', '', null, null, null, null, null, '1092', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('595', '28', null, 'B571', '', null, null, null, null, null, '1093', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('596', '28', null, 'B572', '', null, null, null, null, null, '1094', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('597', '28', null, 'B573', '', null, null, null, null, null, '1095', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('598', '28', null, 'B574', '', null, null, null, null, null, '1096', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('599', '28', null, 'B575', '', null, null, null, null, null, '1097', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('600', '28', null, 'B576', '', null, null, null, null, null, '1098', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('601', '28', null, 'B577', '', null, null, null, null, null, '1099', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('602', '28', null, 'B578', '', null, null, null, null, null, '1100', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('603', '28', null, 'B579', '', null, null, null, null, null, '1101', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('604', '28', null, 'B580', '', null, null, null, null, null, '1102', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('605', '28', null, 'B581', '', null, null, null, null, null, '1103', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('606', '28', null, 'B582', '', null, null, null, null, null, '1104', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('607', '28', null, 'B583', '', null, null, null, null, null, '1105', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('608', '28', null, 'B584', '', null, null, null, null, null, '1106', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('609', '28', null, 'B585', '', null, null, null, null, null, '1107', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('610', '28', null, 'B586', '', null, null, null, null, null, '1108', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('611', '28', null, 'B587', '', null, null, null, null, null, '1109', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('612', '28', null, 'B588', '', null, null, null, null, null, '1110', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('613', '28', null, 'B589', '', null, null, null, null, null, '1111', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('614', '28', null, 'B590', '', null, null, null, null, null, '1112', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('615', '28', null, 'B591', '', null, null, null, null, null, '1113', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('616', '28', null, 'B592', '', null, null, null, null, null, '1114', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('617', '28', null, 'B593', '', null, null, null, null, null, '1115', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('618', '28', null, 'B594', '', null, null, null, null, null, '1116', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('619', '28', null, 'B595', '', null, null, null, null, null, '1117', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('620', '28', null, 'B596', '', null, null, null, null, null, '1118', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('621', '28', null, 'B597', '', null, null, null, null, null, '1119', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('622', '28', null, 'B598', '', null, null, null, null, null, '1120', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('623', '28', null, 'B599', '', null, null, null, null, null, '1121', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('624', '28', null, 'B600', '', null, null, null, null, null, '1122', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('625', '28', null, 'B601', '', null, null, null, null, null, '1123', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('626', '28', null, 'B602', '', null, null, null, null, null, '1124', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('627', '28', null, 'B603', '', null, null, null, null, null, '1125', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('628', '28', null, 'B604', '', null, null, null, null, null, '1126', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('629', '28', null, 'B605', '', null, null, null, null, null, '1127', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('630', '28', null, 'B606', '', null, null, null, null, null, '1128', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('631', '28', null, 'B607', '', null, null, null, null, null, '1129', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('632', '28', null, 'B608', '', null, null, null, null, null, '1130', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('633', '28', null, 'B609', '', null, null, null, null, null, '1131', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('634', '28', null, 'B610', '', null, null, null, null, null, '1132', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('635', '28', null, 'B611', '', null, null, null, null, null, '1133', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('636', '28', null, 'B612', '', null, null, null, null, null, '1134', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('637', '28', null, 'B613', '', null, null, null, null, null, '1135', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('638', '28', null, 'B614', '', null, null, null, null, null, '1136', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('639', '28', null, 'B615', '', null, null, null, null, null, '1137', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('640', '28', null, 'B616', '', null, null, null, null, null, '1138', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('641', '28', null, 'B617', '', null, null, null, null, null, '1139', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('642', '28', null, 'B618', '', null, null, null, null, null, '1140', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('643', '28', null, 'B619', '', null, null, null, null, null, '1141', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('644', '28', null, 'B620', '', null, null, null, null, null, '1142', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('645', '28', null, 'B621', '', null, null, null, null, null, '1143', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('646', '28', null, 'B622', '', null, null, null, null, null, '1144', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('647', '28', null, 'B623', '', null, null, null, null, null, '1145', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('648', '28', null, 'B624', '', null, null, null, null, null, '1146', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('649', '28', null, 'B625', '', null, null, null, null, null, '1147', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('650', '28', null, 'B626', '', null, null, null, null, null, '1148', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('651', '28', null, 'B627', '', null, null, null, null, null, '1149', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('652', '28', null, 'B628', '', null, null, null, null, null, '1150', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('653', '28', null, 'B629', '', null, null, null, null, null, '1151', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('654', '28', null, 'B630', '', null, null, null, null, null, '1152', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('655', '28', null, 'B631', '', null, null, null, null, null, '1153', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('656', '28', null, 'B632', '', null, null, null, null, null, '1154', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('657', '28', null, 'B633', '', null, null, null, null, null, '1155', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('658', '28', null, 'B634', '', null, null, null, null, null, '1156', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('659', '28', null, 'B635', '', null, null, null, null, null, '1157', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('660', '28', null, 'B636', '', null, null, null, null, null, '1158', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('661', '28', null, 'B637', '', null, null, null, null, null, '1159', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('662', '28', null, 'B638', '', null, null, null, null, null, '1160', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('663', '28', null, 'B639', '', null, null, null, null, null, '1161', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('664', '28', null, 'B640', '', null, null, null, null, null, '1162', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('665', '28', null, 'B641', '', null, null, null, null, null, '1163', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('666', '28', null, 'B642', '', null, null, null, null, null, '1164', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('667', '28', null, 'B643', '', null, null, null, null, null, '1165', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('668', '28', null, 'B644', '', null, null, null, null, null, '1166', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('669', '28', null, 'B645', '', null, null, null, null, null, '1167', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('670', '28', null, 'B646', '', null, null, null, null, null, '1168', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('671', '28', null, 'B647', '', null, null, null, null, null, '1169', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('672', '28', null, 'B648', '', null, null, null, null, null, '1170', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('673', '28', null, 'B649', '', null, null, null, null, null, '1171', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('674', '28', null, 'B650', '', null, null, null, null, null, '1172', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('675', '28', null, 'B651', '', null, null, null, null, null, '1173', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('676', '28', null, 'B652', '', null, null, null, null, null, '1174', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('677', '28', null, 'B653', '', null, null, null, null, null, '1175', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('678', '28', null, 'B654', '', null, null, null, null, null, '1176', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('679', '28', null, 'B655', '', null, null, null, null, null, '1177', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('680', '28', null, 'B656', '', null, null, null, null, null, '1178', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('681', '28', null, 'B657', '', null, null, null, null, null, '1179', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('682', '28', null, 'B658', '', null, null, null, null, null, '1180', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('683', '28', null, 'B659', '', null, null, null, null, null, '1181', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('684', '28', null, 'B660', '', null, null, null, null, null, '1182', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('685', '28', null, 'B661', '', null, null, null, null, null, '1183', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('686', '28', null, 'B662', '', null, null, null, null, null, '1184', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('687', '28', null, 'B663', '', null, null, null, null, null, '1185', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('688', '28', null, 'B664', '', null, null, null, null, null, '1186', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('689', '28', null, 'B665', '', null, null, null, null, null, '1187', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('690', '28', null, 'B666', '', null, null, null, null, null, '1188', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('691', '28', null, 'B667', '', null, null, null, null, null, '1189', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('692', '28', null, 'B668', '', null, null, null, null, null, '1190', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('693', '28', null, 'B669', '', null, null, null, null, null, '1191', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('694', '28', null, 'B670', '', null, null, null, null, null, '1192', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('695', '28', null, 'B671', '', null, null, null, null, null, '1193', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('696', '28', null, 'B672', '', null, null, null, null, null, '1194', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('697', '28', null, 'B673', '', null, null, null, null, null, '1195', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('698', '28', null, 'B674', '', null, null, null, null, null, '1196', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('699', '28', null, 'B675', '', null, null, null, null, null, '1197', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('700', '28', null, 'B676', '', null, null, null, null, null, '1198', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('701', '28', null, 'B677', '', null, null, null, null, null, '1199', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('702', '28', null, 'B678', '', null, null, null, null, null, '1200', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('703', '28', null, 'B679', '', null, null, null, null, null, '1201', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('704', '28', null, 'B680', '', null, null, null, null, null, '1202', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('705', '28', null, 'B681', '', null, null, null, null, null, '1203', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('706', '28', null, 'B682', '', null, null, null, null, null, '1204', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('707', '28', null, 'B683', '', null, null, null, null, null, '1205', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('708', '28', null, 'B684', '', null, null, null, null, null, '1206', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('709', '28', null, 'B685', '', null, null, null, null, null, '1207', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('710', '28', null, 'B686', '', null, null, null, null, null, '1208', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('711', '28', null, 'B687', '', null, null, null, null, null, '1209', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('712', '28', null, 'B688', '', null, null, null, null, null, '1210', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('713', '28', null, 'B689', '', null, null, null, null, null, '1211', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('714', '28', null, 'B690', '', null, null, null, null, null, '1212', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('715', '28', null, 'B691', '', null, null, null, null, null, '1213', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('716', '28', null, 'B692', '', null, null, null, null, null, '1214', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('717', '28', null, 'B693', '', null, null, null, null, null, '1215', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('718', '28', null, 'B694', '', null, null, null, null, null, '1216', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('719', '28', null, 'B695', '', null, null, null, null, null, '1217', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('720', '28', null, 'B696', '', null, null, null, null, null, '1218', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('721', '28', null, 'B697', '', null, null, null, null, null, '1219', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('722', '28', null, 'B698', '', null, null, null, null, null, '1220', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('723', '28', null, 'B699', '', null, null, null, null, null, '1221', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('724', '28', null, 'B700', '', null, null, null, null, null, '1222', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('725', '28', null, 'B701', '', null, null, null, null, null, '1223', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('726', '28', null, 'B702', '', null, null, null, null, null, '1224', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('727', '28', null, 'B703', '', null, null, null, null, null, '1225', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('728', '28', null, 'B704', '', null, null, null, null, null, '1226', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('729', '28', null, 'B705', '', null, null, null, null, null, '1227', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('730', '28', null, 'B706', '', null, null, null, null, null, '1228', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('731', '28', null, 'B707', '', null, null, null, null, null, '1229', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('732', '28', null, 'B708', '', null, null, null, null, null, '1230', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('733', '28', null, 'B709', '', null, null, null, null, null, '1231', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('734', '28', null, 'B710', '', null, null, null, null, null, '1232', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('735', '28', null, 'B711', '', null, null, null, null, null, '1233', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('736', '28', null, 'B712', '', null, null, null, null, null, '1234', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('737', '28', null, 'B713', '', null, null, null, null, null, '1235', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('738', '28', null, 'B714', '', null, null, null, null, null, '1236', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('739', '28', null, 'B715', '', null, null, null, null, null, '1237', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('740', '28', null, 'B716', '', null, null, null, null, null, '1238', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('741', '28', null, 'B717', '', null, null, null, null, null, '1239', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('742', '28', null, 'B718', '', null, null, null, null, null, '1240', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('743', '28', null, 'B719', '', null, null, null, null, null, '1241', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('744', '28', null, 'B720', '', null, null, null, null, null, '1242', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('745', '28', null, 'B721', '', null, null, null, null, null, '1243', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('746', '28', null, 'B722', '', null, null, null, null, null, '1244', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('747', '28', null, 'B723', '', null, null, null, null, null, '1245', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('748', '28', null, 'B724', '', null, null, null, null, null, '1246', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('749', '28', null, 'B725', '', null, null, null, null, null, '1247', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('750', '28', null, 'B726', '', null, null, null, null, null, '1248', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('751', '28', null, 'B727', '', null, null, null, null, null, '1249', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('752', '28', null, 'B728', '', null, null, null, null, null, '1250', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('753', '28', null, 'B729', '', null, null, null, null, null, '1251', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('754', '28', null, 'B730', '', null, null, null, null, null, '1252', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('755', '28', null, 'B731', '', null, null, null, null, null, '1253', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('756', '28', null, 'B732', '', null, null, null, null, null, '1254', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('757', '28', null, 'B733', '', null, null, null, null, null, '1255', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('758', '28', null, 'B734', '', null, null, null, null, null, '1256', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('759', '28', null, 'B735', '', null, null, null, null, null, '1257', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('760', '28', null, 'B736', '', null, null, null, null, null, '1258', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('761', '28', null, 'B737', '', null, null, null, null, null, '1259', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('762', '28', null, 'B738', '', null, null, null, null, null, '1260', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('763', '28', null, 'B739', '', null, null, null, null, null, '1261', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('764', '28', null, 'B740', '', null, null, null, null, null, '1262', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('765', '28', null, 'B741', '', null, null, null, null, null, '1263', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('766', '28', null, 'B742', '', null, null, null, null, null, '1264', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('767', '28', null, 'B743', '', null, null, null, null, null, '1265', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('768', '28', null, 'B744', '', null, null, null, null, null, '1266', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('769', '28', null, 'B745', '', null, null, null, null, null, '1267', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('770', '28', null, 'B746', '', null, null, null, null, null, '1268', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('771', '28', null, 'B747', '', null, null, null, null, null, '1269', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('772', '28', null, 'B748', '', null, null, null, null, null, '1270', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('773', '28', null, 'B749', '', null, null, null, null, null, '1271', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('774', '28', null, 'B750', '', null, null, null, null, null, '1272', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('775', '28', null, 'B751', '', null, null, null, null, null, '1273', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('776', '28', null, 'B752', '', null, null, null, null, null, '1274', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('777', '28', null, 'B753', '', null, null, null, null, null, '1275', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('778', '28', null, 'B754', '', null, null, null, null, null, '1276', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('779', '28', null, 'B755', '', null, null, null, null, null, '1277', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('780', '28', null, 'B756', '', null, null, null, null, null, '1278', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('781', '28', null, 'B757', '', null, null, null, null, null, '1279', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('782', '28', null, 'B758', '', null, null, null, null, null, '1280', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('783', '28', null, 'B759', '', null, null, null, null, null, '1281', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('784', '28', null, 'B760', '', null, null, null, null, null, '1282', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('785', '28', null, 'B761', '', null, null, null, null, null, '1283', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('786', '28', null, 'B762', '', null, null, null, null, null, '1284', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('787', '28', null, 'B763', '', null, null, null, null, null, '1285', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('788', '28', null, 'B764', '', null, null, null, null, null, '1286', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('789', '28', null, 'B765', '', null, null, null, null, null, '1287', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('790', '28', null, 'B766', '', null, null, null, null, null, '1288', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('791', '28', null, 'B767', '', null, null, null, null, null, '1289', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('792', '28', null, 'B768', '', null, null, null, null, null, '1290', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('793', '28', null, 'B769', '', null, null, null, null, null, '1291', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('794', '28', null, 'B770', '', null, null, null, null, null, '1292', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('795', '28', null, 'B771', '', null, null, null, null, null, '1293', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('796', '28', null, 'B772', '', null, null, null, null, null, '1294', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('797', '28', null, 'B773', '', null, null, null, null, null, '1295', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('798', '28', null, 'B774', '', null, null, null, null, null, '1296', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('799', '28', null, 'B775', '', null, null, null, null, null, '1297', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('800', '28', null, 'B776', '', null, null, null, null, null, '1298', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('801', '28', null, 'B777', '', null, null, null, null, null, '1299', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('802', '28', null, 'B778', '', null, null, null, null, null, '1300', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('803', '28', null, 'B779', '', null, null, null, null, null, '1301', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('804', '28', null, 'B780', '', null, null, null, null, null, '1302', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('805', '28', null, 'B781', '', null, null, null, null, null, '1303', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('806', '28', null, 'B782', '', null, null, null, null, null, '1304', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('807', '28', null, 'B783', '', null, null, null, null, null, '1305', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('808', '28', null, 'B784', '', null, null, null, null, null, '1306', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('809', '28', null, 'B785', '', null, null, null, null, null, '1307', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('810', '28', null, 'B786', '', null, null, null, null, null, '1308', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('811', '28', null, 'B787', '', null, null, null, null, null, '1309', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('812', '28', null, 'B788', '', null, null, null, null, null, '1310', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('813', '28', null, 'B789', '', null, null, null, null, null, '1311', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('814', '28', null, 'B790', '', null, null, null, null, null, '1312', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('815', '28', null, 'B791', '', null, null, null, null, null, '1313', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('816', '28', null, 'B792', '', null, null, null, null, null, '1314', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('817', '28', null, 'B793', '', null, null, null, null, null, '1315', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('818', '28', null, 'B794', '', null, null, null, null, null, '1316', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('819', '28', null, 'B795', '', null, null, null, null, null, '1317', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('820', '28', null, 'B796', '', null, null, null, null, null, '1318', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('821', '28', null, 'B797', '', null, null, null, null, null, '1319', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('822', '28', null, 'B798', '', null, null, null, null, null, '1320', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('823', '28', null, 'B799', '', null, null, null, null, null, '1321', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('824', '28', null, 'B800', '', null, null, null, null, null, '1322', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('825', '28', null, 'B801', '', null, null, null, null, null, '1323', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('826', '28', null, 'B802', '', null, null, null, null, null, '1324', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('827', '28', null, 'B803', '', null, null, null, null, null, '1325', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('828', '28', null, 'B804', '', null, null, null, null, null, '1326', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('829', '28', null, 'B805', '', null, null, null, null, null, '1327', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('830', '28', null, 'B806', '', null, null, null, null, null, '1328', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('831', '28', null, 'B807', '', null, null, null, null, null, '1329', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('832', '28', null, 'B808', '', null, null, null, null, null, '1330', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('833', '28', null, 'B809', '', null, null, null, null, null, '1331', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('834', '28', null, 'B810', '', null, null, null, null, null, '1332', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('835', '28', null, 'B811', '', null, null, null, null, null, '1333', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('836', '28', null, 'B812', '', null, null, null, null, null, '1334', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('837', '28', null, 'B813', '', null, null, null, null, null, '1335', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('838', '28', null, 'B814', '', null, null, null, null, null, '1336', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('839', '28', null, 'B815', '', null, null, null, null, null, '1337', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('840', '28', null, 'B816', '', null, null, null, null, null, '1338', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('841', '28', null, 'B817', '', null, null, null, null, null, '1339', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('842', '28', null, 'B818', '', null, null, null, null, null, '1340', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('843', '28', null, 'B819', '', null, null, null, null, null, '1341', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('844', '28', null, 'B820', '', null, null, null, null, null, '1342', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('845', '28', null, 'B821', '', null, null, null, null, null, '1343', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('846', '28', null, 'B822', '', null, null, null, null, null, '1344', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('847', '28', null, 'B823', '', null, null, null, null, null, '1345', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('848', '28', null, 'B824', '', null, null, null, null, null, '1346', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('849', '28', null, 'B825', '', null, null, null, null, null, '1347', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('850', '28', null, 'B826', '', null, null, null, null, null, '1348', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('851', '28', null, 'B827', '', null, null, null, null, null, '1349', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('852', '28', null, 'B828', '', null, null, null, null, null, '1350', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('853', '28', null, 'B829', '', null, null, null, null, null, '1351', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('854', '28', null, 'B830', '', null, null, null, null, null, '1352', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('855', '28', null, 'B831', '', null, null, null, null, null, '1353', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('856', '28', null, 'B832', '', null, null, null, null, null, '1354', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('857', '28', null, 'B833', '', null, null, null, null, null, '1355', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('858', '28', null, 'B834', '', null, null, null, null, null, '1356', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('859', '28', null, 'B835', '', null, null, null, null, null, '1357', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('860', '28', null, 'B836', '', null, null, null, null, null, '1358', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('861', '28', null, 'B837', '', null, null, null, null, null, '1359', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('862', '28', null, 'B838', '', null, null, null, null, null, '1360', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('863', '28', null, 'B839', '', null, null, null, null, null, '1361', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('864', '28', null, 'B840', '', null, null, null, null, null, '1362', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('865', '28', null, 'B841', '', null, null, null, null, null, '1363', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('866', '28', null, 'B842', '', null, null, null, null, null, '1364', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('867', '28', null, 'B843', '', null, null, null, null, null, '1365', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('868', '28', null, 'B844', '', null, null, null, null, null, '1366', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('869', '28', null, 'B845', '', null, null, null, null, null, '1367', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('870', '28', null, 'B846', '', null, null, null, null, null, '1368', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('871', '28', null, 'B847', '', null, null, null, null, null, '1369', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('872', '28', null, 'B848', '', null, null, null, null, null, '1370', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('873', '28', null, 'B849', '', null, null, null, null, null, '1371', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('874', '28', null, 'B850', '', null, null, null, null, null, '1372', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('875', '28', null, 'B851', '', null, null, null, null, null, '1373', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('876', '28', null, 'B852', '', null, null, null, null, null, '1374', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('877', '28', null, 'B853', '', null, null, null, null, null, '1375', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('878', '28', null, 'B854', '', null, null, null, null, null, '1376', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('879', '28', null, 'B855', '', null, null, null, null, null, '1377', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('880', '28', null, 'B856', '', null, null, null, null, null, '1378', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('881', '28', null, 'B857', '', null, null, null, null, null, '1379', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('882', '28', null, 'B858', '', null, null, null, null, null, '1380', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('883', '28', null, 'B859', '', null, null, null, null, null, '1381', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('884', '28', null, 'B860', '', null, null, null, null, null, '1382', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('885', '28', null, 'B861', '', null, null, null, null, null, '1383', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('886', '28', null, 'B862', '', null, null, null, null, null, '1384', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('887', '28', null, 'B863', '', null, null, null, null, null, '1385', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('888', '28', null, 'B864', '', null, null, null, null, null, '1386', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('889', '28', null, 'B865', '', null, null, null, null, null, '1387', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('890', '28', null, 'B866', '', null, null, null, null, null, '1388', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('891', '28', null, 'B867', '', null, null, null, null, null, '1389', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('892', '28', null, 'B868', '', null, null, null, null, null, '1390', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('893', '28', null, 'B869', '', null, null, null, null, null, '1391', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('894', '28', null, 'B870', '', null, null, null, null, null, '1392', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('895', '28', null, 'B871', '', null, null, null, null, null, '1393', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('896', '28', null, 'B872', '', null, null, null, null, null, '1394', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('897', '28', null, 'B873', '', null, null, null, null, null, '1395', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('898', '28', null, 'B874', '', null, null, null, null, null, '1396', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('899', '28', null, 'B875', '', null, null, null, null, null, '1397', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('900', '28', null, 'B876', '', null, null, null, null, null, '1398', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('901', '28', null, 'B877', '', null, null, null, null, null, '1399', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('902', '28', null, 'B878', '', null, null, null, null, null, '1400', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('903', '28', null, 'B879', '', null, null, null, null, null, '1401', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('904', '28', null, 'B880', '', null, null, null, null, null, '1402', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('905', '28', null, 'B881', '', null, null, null, null, null, '1403', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('906', '28', null, 'B882', '', null, null, null, null, null, '1404', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('907', '28', null, 'B883', '', null, null, null, null, null, '1405', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('908', '28', null, 'B884', '', null, null, null, null, null, '1406', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('909', '28', null, 'B885', '', null, null, null, null, null, '1407', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('910', '28', null, 'B886', '', null, null, null, null, null, '1408', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('911', '28', null, 'B887', '', null, null, null, null, null, '1409', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('912', '28', null, 'B888', '', null, null, null, null, null, '1410', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('913', '28', null, 'B889', '', null, null, null, null, null, '1411', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('914', '28', null, 'B890', '', null, null, null, null, null, '1412', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('915', '28', null, 'B891', '', null, null, null, null, null, '1413', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('916', '28', null, 'B892', '', null, null, null, null, null, '1414', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('917', '28', null, 'B893', '', null, null, null, null, null, '1415', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('918', '28', null, 'B894', '', null, null, null, null, null, '1416', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('919', '28', null, 'B895', '', null, null, null, null, null, '1417', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('920', '28', null, 'B896', '', null, null, null, null, null, '1418', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('921', '28', null, 'B897', '', null, null, null, null, null, '1419', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('922', '28', null, 'B898', '', null, null, null, null, null, '1420', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('923', '28', null, 'B899', '', null, null, null, null, null, '1421', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('924', '28', null, 'B900', '', null, null, null, null, null, '1422', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('925', '28', null, 'B901', '', null, null, null, null, null, '1423', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('926', '28', null, 'B902', '', null, null, null, null, null, '1424', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('927', '28', null, 'B903', '', null, null, null, null, null, '1425', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('928', '28', null, 'B904', '', null, null, null, null, null, '1426', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('929', '28', null, 'B905', '', null, null, null, null, null, '1427', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('930', '28', null, 'B906', '', null, null, null, null, null, '1428', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('931', '28', null, 'B907', '', null, null, null, null, null, '1429', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('932', '28', null, 'B908', '', null, null, null, null, null, '1430', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('933', '28', null, 'B909', '', null, null, null, null, null, '1431', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('934', '28', null, 'B910', '', null, null, null, null, null, '1432', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('935', '28', null, 'B911', '', null, null, null, null, null, '1433', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('936', '28', null, 'B912', '', null, null, null, null, null, '1434', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('937', '28', null, 'B913', '', null, null, null, null, null, '1435', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('938', '28', null, 'B914', '', null, null, null, null, null, '1436', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('939', '28', null, 'B915', '', null, null, null, null, null, '1437', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('940', '28', null, 'B916', '', null, null, null, null, null, '1438', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('941', '28', null, 'B917', '', null, null, null, null, null, '1439', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('942', '28', null, 'B918', '', null, null, null, null, null, '1440', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('943', '28', null, 'B919', '', null, null, null, null, null, '1441', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('944', '28', null, 'B920', '', null, null, null, null, null, '1442', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('945', '28', null, 'B921', '', null, null, null, null, null, '1443', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('946', '28', null, 'B922', '', null, null, null, null, null, '1444', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('947', '28', null, 'B923', '', null, null, null, null, null, '1445', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('948', '28', null, 'B924', '', null, null, null, null, null, '1446', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('949', '28', null, 'B925', '', null, null, null, null, null, '1447', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('950', '28', null, 'B926', '', null, null, null, null, null, '1448', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('951', '28', null, 'B927', '', null, null, null, null, null, '1449', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('952', '28', null, 'B928', '', null, null, null, null, null, '1450', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('953', '28', null, 'B929', '', null, null, null, null, null, '1451', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('954', '28', null, 'B930', '', null, null, null, null, null, '1452', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('955', '28', null, 'B931', '', null, null, null, null, null, '1453', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('956', '28', null, 'B932', '', null, null, null, null, null, '1454', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('957', '28', null, 'B933', '', null, null, null, null, null, '1455', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('958', '28', null, 'B934', '', null, null, null, null, null, '1456', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('959', '28', null, 'B935', '', null, null, null, null, null, '1457', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('960', '28', null, 'B936', '', null, null, null, null, null, '1458', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('961', '28', null, 'B937', '', null, null, null, null, null, '1459', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('962', '28', null, 'B938', '', null, null, null, null, null, '1460', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('963', '28', null, 'B939', '', null, null, null, null, null, '1461', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('964', '28', null, 'B940', '', null, null, null, null, null, '1462', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('965', '28', null, 'B941', '', null, null, null, null, null, '1463', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('966', '28', null, 'B942', '', null, null, null, null, null, '1464', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('967', '28', null, 'B943', '', null, null, null, null, null, '1465', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('968', '28', null, 'B944', '', null, null, null, null, null, '1466', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('969', '28', null, 'B945', '', null, null, null, null, null, '1467', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('970', '28', null, 'B946', '', null, null, null, null, null, '1468', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('971', '28', null, 'B947', '', null, null, null, null, null, '1469', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('972', '28', null, 'B948', '', null, null, null, null, null, '1470', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('973', '28', null, 'B949', '', null, null, null, null, null, '1471', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('974', '28', null, 'B950', '', null, null, null, null, null, '1472', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('975', '28', null, 'B951', '', null, null, null, null, null, '1473', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('976', '28', null, 'B952', '', null, null, null, null, null, '1474', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('977', '28', null, 'B953', '', null, null, null, null, null, '1475', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('978', '28', null, 'B954', '', null, null, null, null, null, '1476', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('979', '28', null, 'B955', '', null, null, null, null, null, '1477', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('980', '28', null, 'B956', '', null, null, null, null, null, '1478', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('981', '28', null, 'B957', '', null, null, null, null, null, '1479', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('982', '28', null, 'B958', '', null, null, null, null, null, '1480', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('983', '28', null, 'B959', '', null, null, null, null, null, '1481', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('984', '28', null, 'B960', '', null, null, null, null, null, '1482', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('985', '28', null, 'B961', '', null, null, null, null, null, '1483', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('986', '28', null, 'B962', '', null, null, null, null, null, '1484', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('987', '28', null, 'B963', '', null, null, null, null, null, '1485', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('988', '28', null, 'B964', '', null, null, null, null, null, '1486', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('989', '28', null, 'B965', '', null, null, null, null, null, '1487', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('990', '28', null, 'B966', '', null, null, null, null, null, '1488', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('991', '28', null, 'B967', '', null, null, null, null, null, '1489', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('992', '28', null, 'B968', '', null, null, null, null, null, '1490', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('993', '28', null, 'B969', '', null, null, null, null, null, '1491', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('994', '28', null, 'B970', '', null, null, null, null, null, '1492', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('995', '28', null, 'B971', '', null, null, null, null, null, '1493', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('996', '28', null, 'B972', '', null, null, null, null, null, '1494', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('997', '28', null, 'B973', '', null, null, null, null, null, '1495', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('998', '28', null, 'B974', '', null, null, null, null, null, '1496', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('999', '28', null, 'B975', '', null, null, null, null, null, '1497', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1000', '28', null, 'B976', '', null, null, null, null, null, '1498', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1001', '28', null, 'B977', '', null, null, null, null, null, '1499', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1002', '28', null, 'B978', '', null, null, null, null, null, '1500', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1003', '28', null, 'B979', '', null, null, null, null, null, '1501', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1004', '28', null, 'B980', '', null, null, null, null, null, '1502', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1005', '28', null, 'B981', '', null, null, null, null, null, '1503', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1006', '28', null, 'B982', '', null, null, null, null, null, '1504', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1007', '28', null, 'B983', '', null, null, null, null, null, '1505', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1008', '28', null, 'B984', '', null, null, null, null, null, '1506', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1009', '28', null, 'B985', '', null, null, null, null, null, '1507', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1010', '28', null, 'B986', '', null, null, null, null, null, '1508', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1011', '28', null, 'B987', '', null, null, null, null, null, '1509', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1012', '28', null, 'B988', '', null, null, null, null, null, '1510', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1013', '28', null, 'B989', '', null, null, null, null, null, '1511', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1014', '28', null, 'B990', '', null, null, null, null, null, '1512', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1015', '28', null, 'B991', '', null, null, null, null, null, '1513', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1016', '28', null, 'B992', '', null, null, null, null, null, '1514', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1017', '28', null, 'B993', '', null, null, null, null, null, '1515', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1018', '28', null, 'B994', '', null, null, null, null, null, '1516', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1019', '28', null, 'B995', '', null, null, null, null, null, '1517', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1020', '28', null, 'B996', '', null, null, null, null, null, '1518', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1021', '28', null, 'B997', '', null, null, null, null, null, '1519', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1022', '28', null, 'B998', '', null, null, null, null, null, '1520', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1023', '28', null, 'B999', '', null, null, null, null, null, '1521', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1024', '28', null, 'B1000', '', null, null, null, null, null, '1522', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1025', '28', null, 'B1001', '', null, null, null, null, null, '1523', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1026', '28', null, 'B1002', '', null, null, null, null, null, '1524', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1027', '28', null, 'B1003', '', null, null, null, null, null, '1525', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1028', '28', null, 'B1004', '', null, null, null, null, null, '1526', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1029', '28', null, 'B1005', '', null, null, null, null, null, '1527', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1030', '28', null, 'B1006', '', null, null, null, null, null, '1528', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1031', '28', null, 'B1007', '', null, null, null, null, null, '1529', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1032', '28', null, 'B1008', '', null, null, null, null, null, '1530', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1033', '28', null, 'B1009', '', null, null, null, null, null, '1531', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1034', '28', null, 'B1010', '', null, null, null, null, null, '1532', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1035', '28', null, 'B1012', '', null, null, null, null, null, '1534', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1036', '28', null, 'B1013', '', null, null, null, null, null, '1535', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1037', '28', null, 'B1014', '', null, null, null, null, null, '1536', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1038', '28', null, 'B1015', '', null, null, null, null, null, '1537', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1039', '28', null, 'B1016', '', null, null, null, null, null, '1538', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1040', '28', null, 'B1017', '', null, null, null, null, null, '1539', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1041', '28', null, 'B1018', '', null, null, null, null, null, '1540', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1042', '28', null, 'B1019', '', null, null, null, null, null, '1541', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1043', '28', null, 'B1020', '', null, null, null, null, null, '1542', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1044', '28', null, 'B1021', '', null, null, null, null, null, '1543', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1045', '28', null, 'B1022', '', null, null, null, null, null, '1544', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1046', '28', null, 'B1023', '', null, null, null, null, null, '1545', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1047', '28', null, 'B1024', '', null, null, null, null, null, '1546', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1048', '28', null, 'B1025', '', null, null, null, null, null, '1547', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1049', '28', null, 'B1026', '', null, null, null, null, null, '1548', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1050', '28', null, 'B1027', '', null, null, null, null, null, '1549', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1051', '28', null, 'B1028', '', null, null, null, null, null, '1550', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1052', '28', null, 'B1029', '', null, null, null, null, null, '1551', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1053', '28', null, 'B1030', '', null, null, null, null, null, '1552', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1054', '28', null, 'B1031', '', null, null, null, null, null, '1553', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1055', '28', null, 'B1032', '', null, null, null, null, null, '1554', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1056', '28', null, 'B1033', '', null, null, null, null, null, '1555', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1057', '28', null, 'B1034', '', null, null, null, null, null, '1556', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1058', '28', null, 'B1035', '', null, null, null, null, null, '1557', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1059', '28', null, 'B1036', '', null, null, null, null, null, '1558', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1060', '28', null, 'B1037', '', null, null, null, null, null, '1559', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1061', '28', null, 'B1038', '', null, null, null, null, null, '1560', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1062', '28', null, 'B1039', '', null, null, null, null, null, '1561', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1063', '28', null, 'B1040', '', null, null, null, null, null, '1562', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1064', '28', null, 'B1041', '', null, null, null, null, null, '1563', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1065', '28', null, 'B1042', '', null, null, null, null, null, '1564', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1066', '28', null, 'B1043', '', null, null, null, null, null, '1565', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1067', '28', null, 'B1044', '', null, null, null, null, null, '1566', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1068', '28', null, 'B1045', '', null, null, null, null, null, '1567', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1069', '28', null, 'B1046', '', null, null, null, null, null, '1568', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1070', '28', null, 'B1047', '', null, null, null, null, null, '1569', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1071', '28', null, 'B1048', '', null, null, null, null, null, '1570', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1072', '28', null, 'B1049', '', null, null, null, null, null, '1571', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1073', '28', null, 'B1050', '', null, null, null, null, null, '1572', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1074', '28', null, 'B1051', '', null, null, null, null, null, '1573', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1075', '28', null, 'B1052', '', null, null, null, null, null, '1574', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1076', '28', null, 'B1053', '', null, null, null, null, null, '1575', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1077', '28', null, 'B1054', '', null, null, null, null, null, '1576', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1078', '28', null, 'B1055', '', null, null, null, null, null, '1577', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1079', '28', null, 'B1056', '', null, null, null, null, null, '1578', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1080', '28', null, 'B1057', '', null, null, null, null, null, '1579', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1081', '28', null, 'B1058', '', null, null, null, null, null, '1580', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1082', '28', null, 'B1059', '', null, null, null, null, null, '1581', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1083', '28', null, 'B1060', '', null, null, null, null, null, '1582', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1084', '28', null, 'B1061', '', null, null, null, null, null, '1583', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1085', '28', null, 'B1062', '', null, null, null, null, null, '1584', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1086', '28', null, 'B1063', '', null, null, null, null, null, '1585', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1087', '28', null, 'B1064', '', null, null, null, null, null, '1586', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1088', '28', null, 'B1065', '', null, null, null, null, null, '1587', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1089', '28', null, 'B1066', '', null, null, null, null, null, '1588', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1090', '28', null, 'B1067', '', null, null, null, null, null, '1589', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1091', '28', null, 'B1068', '', null, null, null, null, null, '1590', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1092', '28', null, 'B1069', '', null, null, null, null, null, '1591', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1093', '28', null, 'B1070', '', null, null, null, null, null, '1592', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1094', '28', null, 'B1071', '', null, null, null, null, null, '1593', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1095', '28', null, 'B1072', '', null, null, null, null, null, '1594', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1096', '28', null, 'B1073', '', null, null, null, null, null, '1595', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1097', '28', null, 'B1074', '', null, null, null, null, null, '1596', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1098', '28', null, 'B1075', '', null, null, null, null, null, '1597', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1099', '28', null, 'B1076', '', null, null, null, null, null, '1598', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1100', '28', null, 'B1077', '', null, null, null, null, null, '1599', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1101', '28', null, 'B1078', '', null, null, null, null, null, '1600', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1102', '28', null, 'B1079', '', null, null, null, null, null, '1601', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1103', '28', null, 'B1080', '', null, null, null, null, null, '1602', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1104', '28', null, 'B1081', '', null, null, null, null, null, '1603', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1105', '28', null, 'B1082', '', null, null, null, null, null, '1604', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1106', '28', null, 'B1083', '', null, null, null, null, null, '1605', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1107', '28', null, 'B1084', '', null, null, null, null, null, '1606', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1108', '28', null, 'B1085', '', null, null, null, null, null, '1607', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1109', '28', null, 'B1086', '', null, null, null, null, null, '1608', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1110', '28', null, 'B1087', '', null, null, null, null, null, '1609', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1111', '28', null, 'B1088', '', null, null, null, null, null, '1610', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1112', '28', null, 'B1089', '', null, null, null, null, null, '1611', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1113', '28', null, 'B1090', '', null, null, null, null, null, '1612', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1114', '28', null, 'B1091', '', null, null, null, null, null, '1613', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1115', '28', null, 'B1092', '', null, null, null, null, null, '1614', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1116', '28', null, 'B1093', '', null, null, null, null, null, '1615', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1117', '28', null, 'B1094', '', null, null, null, null, null, '1616', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1118', '28', null, 'B1095', '', null, null, null, null, null, '1617', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1119', '28', null, 'B1096', '', null, null, null, null, null, '1618', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1120', '28', null, 'B1097', '', null, null, null, null, null, '1619', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1121', '28', null, 'B1098', '', null, null, null, null, null, '1620', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1122', '28', null, 'B1099', '', null, null, null, null, null, '1621', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1123', '28', null, 'B1100', '', null, null, null, null, null, '1622', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1124', '28', null, 'B1101', '', null, null, null, null, null, '1623', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1125', '28', null, 'B1102', '', null, null, null, null, null, '1624', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1126', '28', null, 'B1103', '', null, null, null, null, null, '1625', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1127', '28', null, 'B1104', '', null, null, null, null, null, '1626', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1128', '28', null, 'B1105', '', null, null, null, null, null, '1627', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1129', '28', null, 'B1106', '', null, null, null, null, null, '1628', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1130', '28', null, 'B1107', '', null, null, null, null, null, '1629', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1131', '28', null, 'B1108', '', null, null, null, null, null, '1630', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1132', '28', null, 'B1109', '', null, null, null, null, null, '1631', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1133', '28', null, 'B1110', '', null, null, null, null, null, '1632', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1134', '28', null, 'B1111', '', null, null, null, null, null, '1633', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1135', '28', null, 'B1112', '', null, null, null, null, null, '1634', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1136', '28', null, 'B1113', '', null, null, null, null, null, '1635', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1137', '28', null, 'B1114', '', null, null, null, null, null, '1636', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1138', '28', null, 'B1115', '', null, null, null, null, null, '1637', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1139', '28', null, 'B1116', '', null, null, null, null, null, '1638', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1140', '28', null, 'B1117', '', null, null, null, null, null, '1639', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1141', '28', null, 'B1118', '', null, null, null, null, null, '1640', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1142', '28', null, 'B1119', '', null, null, null, null, null, '1641', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1143', '28', null, 'B1120', '', null, null, null, null, null, '1642', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1144', '28', null, 'B1121', '', null, null, null, null, null, '1643', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1145', '28', null, 'B1122', '', null, null, null, null, null, '1644', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1146', '28', null, 'B1123', '', null, null, null, null, null, '1645', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1147', '28', null, 'B1124', '', null, null, null, null, null, '1646', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1148', '28', null, 'B1125', '', null, null, null, null, null, '1647', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1149', '28', null, 'B1126', '', null, null, null, null, null, '1648', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1150', '28', null, 'B1127', '', null, null, null, null, null, '1649', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1151', '28', null, 'B1128', '', null, null, null, null, null, '1650', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1152', '28', null, 'B1129', '', null, null, null, null, null, '1651', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1153', '28', null, 'B1130', '', null, null, null, null, null, '1652', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1154', '28', null, 'B1131', '', null, null, null, null, null, '1653', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1155', '28', null, 'B1132', '', null, null, null, null, null, '1654', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1156', '28', null, 'B1133', '', null, null, null, null, null, '1655', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1157', '28', null, 'B1134', '', null, null, null, null, null, '1656', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1158', '28', null, 'B1135', '', null, null, null, null, null, '1657', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1159', '28', null, 'B1136', '', null, null, null, null, null, '1658', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1160', '28', null, 'B1137', '', null, null, null, null, null, '1659', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1161', '28', null, 'B1138', '', null, null, null, null, null, '1660', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1162', '28', null, 'B1139', '', null, null, null, null, null, '1661', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1163', '28', null, 'B1140', '', null, null, null, null, null, '1662', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1164', '28', null, 'B1141', '', null, null, null, null, null, '1663', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1165', '28', null, 'B1142', '', null, null, null, null, null, '1664', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1166', '28', null, 'B1143', '', null, null, null, null, null, '1665', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1167', '28', null, 'B1144', '', null, null, null, null, null, '1666', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1168', '28', null, 'B1145', '', null, null, null, null, null, '1667', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1169', '28', null, 'B1146', '', null, null, null, null, null, '1668', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1170', '28', null, 'B1147', '', null, null, null, null, null, '1669', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1171', '28', null, 'B1148', '', null, null, null, null, null, '1670', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1172', '28', null, 'B1149', '', null, null, null, null, null, '1671', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1173', '28', null, 'B1150', '', null, null, null, null, null, '1672', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1174', '28', null, 'B1151', '', null, null, null, null, null, '1673', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1175', '28', null, 'B1152', '', null, null, null, null, null, '1674', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1176', '28', null, 'B1153', '', null, null, null, null, null, '1675', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1177', '28', null, 'B1154', '', null, null, null, null, null, '1676', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1178', '28', null, 'B1155', '', null, null, null, null, null, '1677', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1179', '28', null, 'B1156', '', null, null, null, null, null, '1678', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1180', '28', null, 'B1157', '', null, null, null, null, null, '1679', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1181', '28', null, 'B1158', '', null, null, null, null, null, '1680', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1182', '28', null, 'B1159', '', null, null, null, null, null, '1681', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1183', '28', null, 'B1160', '', null, null, null, null, null, '1682', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1184', '28', null, 'B1161', '', null, null, null, null, null, '1683', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1185', '28', null, 'B1162', '', null, null, null, null, null, '1684', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1186', '28', null, 'B1163', '', null, null, null, null, null, '1685', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1187', '28', null, 'B1164', '', null, null, null, null, null, '1686', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1188', '28', null, 'B1165', '', null, null, null, null, null, '1687', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1189', '28', null, 'B1166', '', null, null, null, null, null, '1688', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1190', '28', null, 'B1167', '', null, null, null, null, null, '1689', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1191', '28', null, 'B1168', '', null, null, null, null, null, '1690', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1192', '28', null, 'B1169', '', null, null, null, null, null, '1691', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1193', '28', null, 'B1170', '', null, null, null, null, null, '1692', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1194', '28', null, 'B1171', '', null, null, null, null, null, '1693', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1195', '28', null, 'B1172', '', null, null, null, null, null, '1694', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1196', '28', null, 'B1173', '', null, null, null, null, null, '1695', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1197', '28', null, 'B1174', '', null, null, null, null, null, '1696', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1198', '28', null, 'B1175', '', null, null, null, null, null, '1697', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1199', '28', null, 'B1176', '', null, null, null, null, null, '1698', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1200', '28', null, 'B1177', '', null, null, null, null, null, '1699', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1201', '28', null, 'B1178', '', null, null, null, null, null, '1700', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1202', '28', null, 'B1179', '', null, null, null, null, null, '1701', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1203', '28', null, 'B1180', '', null, null, null, null, null, '1702', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1204', '28', null, 'B1181', '', null, null, null, null, null, '1703', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1205', '28', null, 'B1182', '', null, null, null, null, null, '1704', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1206', '28', null, 'B1183', '', null, null, null, null, null, '1705', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1207', '28', null, 'B1184', '', null, null, null, null, null, '1706', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1208', '28', null, 'B1185', '', null, null, null, null, null, '1707', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1209', '28', null, 'B1186', '', null, null, null, null, null, '1708', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1210', '28', null, 'B1187', '', null, null, null, null, null, '1709', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1211', '28', null, 'B1188', '', null, null, null, null, null, '1710', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1212', '28', null, 'B1189', '', null, null, null, null, null, '1711', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1213', '28', null, 'B1190', '', null, null, null, null, null, '1712', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1214', '28', null, 'B1191', '', null, null, null, null, null, '1713', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1215', '28', null, 'B1192', '', null, null, null, null, null, '1714', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1216', '28', null, 'B1193', '', null, null, null, null, null, '1715', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1217', '28', null, 'B1194', '', null, null, null, null, null, '1716', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1218', '28', null, 'B1195', '', null, null, null, null, null, '1717', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1219', '28', null, 'B1196', '', null, null, null, null, null, '1718', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1220', '28', null, 'B1197', '', null, null, null, null, null, '1719', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1221', '28', null, 'B1198', '', null, null, null, null, null, '1720', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1222', '28', null, 'B1199', '', null, null, null, null, null, '1721', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1223', '28', null, 'B1200', '', null, null, null, null, null, '1722', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1224', '28', null, 'B1201', '', null, null, null, null, null, '1723', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1225', '28', null, 'B1202', '', null, null, null, null, null, '1724', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1226', '28', null, 'B1203', '', null, null, null, null, null, '1725', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1227', '28', null, 'B1204', '', null, null, null, null, null, '1726', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1228', '28', null, 'B1205', '', null, null, null, null, null, '1727', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1229', '28', null, 'B1206', '', null, null, null, null, null, '1728', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1230', '28', null, 'B1207', '', null, null, null, null, null, '1729', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1231', '28', null, 'B1208', '', null, null, null, null, null, '1730', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1232', '28', null, 'B1209', '', null, null, null, null, null, '1731', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1233', '28', null, 'B1210', '', null, null, null, null, null, '1732', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1234', '28', null, 'B1211', '', null, null, null, null, null, '1733', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1235', '28', null, 'B1212', '', null, null, null, null, null, '1734', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1236', '28', null, 'B1213', '', null, null, null, null, null, '1735', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1237', '28', null, 'B1214', '', null, null, null, null, null, '1736', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1238', '28', null, 'B1215', '', null, null, null, null, null, '1737', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1239', '28', null, 'B1216', '', null, null, null, null, null, '1738', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1240', '28', null, 'B1217', '', null, null, null, null, null, '1739', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1241', '28', null, 'B1218', '', null, null, null, null, null, '1740', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1242', '28', null, 'B1219', '', null, null, null, null, null, '1741', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1243', '28', null, 'B1220', '', null, null, null, null, null, '1742', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1244', '28', null, 'B1221', '', null, null, null, null, null, '1743', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1245', '28', null, 'B1222', '', null, null, null, null, null, '1744', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1246', '28', null, 'B1223', '', null, null, null, null, null, '1745', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1247', '28', null, 'B1224', '', null, null, null, null, null, '1746', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1248', '28', null, 'B1225', '', null, null, null, null, null, '1747', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1249', '28', null, 'B1226', '', null, null, null, null, null, '1748', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1250', '28', null, 'B1227', '', null, null, null, null, null, '1749', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1251', '28', null, 'B1228', '', null, null, null, null, null, '1750', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1252', '28', null, 'B1229', '', null, null, null, null, null, '1751', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1253', '28', null, 'B1230', '', null, null, null, null, null, '1752', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1254', '28', null, 'B1231', '', null, null, null, null, null, '1753', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1255', '28', null, 'B1232', '', null, null, null, null, null, '1754', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1256', '28', null, 'B1233', '', null, null, null, null, null, '1755', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1257', '28', null, 'B1234', '', null, null, null, null, null, '1756', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1258', '28', null, 'B1235', '', null, null, null, null, null, '1757', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1259', '28', null, 'B1236', '', null, null, null, null, null, '1758', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1260', '28', null, 'B1237', '', null, null, null, null, null, '1759', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1261', '28', null, 'B1238', '', null, null, null, null, null, '1760', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1262', '28', null, 'B1239', '', null, null, null, null, null, '1761', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1263', '28', null, 'B1240', '', null, null, null, null, null, '1762', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1264', '28', null, 'B1241', '', null, null, null, null, null, '1763', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1265', '28', null, 'B1242', '', null, null, null, null, null, '1764', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1266', '28', null, 'B1243', '', null, null, null, null, null, '1765', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1267', '28', null, 'B1244', '', null, null, null, null, null, '1766', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1268', '28', null, 'B1245', '', null, null, null, null, null, '1767', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1269', '28', null, 'B1246', '', null, null, null, null, null, '1768', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1270', '28', null, 'B1247', '', null, null, null, null, null, '1769', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1271', '28', null, 'B1248', '', null, null, null, null, null, '1770', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1272', '28', null, 'B1249', '', null, null, null, null, null, '1771', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1273', '28', null, 'B1250', '', null, null, null, null, null, '1772', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1274', '28', null, 'B1251', '', null, null, null, null, null, '1773', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1275', '28', null, 'B1252', '', null, null, null, null, null, '1774', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1276', '28', null, 'B1253', '', null, null, null, null, null, '1775', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1277', '28', null, 'B1254', '', null, null, null, null, null, '1776', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1278', '28', null, 'B1255', '', null, null, null, null, null, '1777', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1279', '28', null, 'B1256', '', null, null, null, null, null, '1778', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1280', '28', null, 'B1257', '', null, null, null, null, null, '1779', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1281', '28', null, 'B1258', '', null, null, null, null, null, '1780', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1282', '28', null, 'B1259', '', null, null, null, null, null, '1781', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1283', '28', null, 'B1260', '', null, null, null, null, null, '1782', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1284', '28', null, 'B1261', '', null, null, null, null, null, '1783', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1285', '28', null, 'B1262', '', null, null, null, null, null, '1784', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1286', '28', null, 'B1263', '', null, null, null, null, null, '1785', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1287', '28', null, 'B1264', '', null, null, null, null, null, '1786', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1288', '28', null, 'B1265', '', null, null, null, null, null, '1787', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1289', '28', null, 'B1266', '', null, null, null, null, null, '1788', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1290', '28', null, 'B1267', '', null, null, null, null, null, '1789', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1291', '28', null, 'B1268', '', null, null, null, null, null, '1790', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1292', '28', null, 'B1269', '', null, null, null, null, null, '1791', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1293', '28', null, 'B1270', '', null, null, null, null, null, '1792', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1294', '28', null, 'B1271', '', null, null, null, null, null, '1793', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1295', '28', null, 'B1272', '', null, null, null, null, null, '1794', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1296', '28', null, 'B1273', '', null, null, null, null, null, '1795', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1297', '28', null, 'B1274', '', null, null, null, null, null, '1796', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1298', '28', null, 'B1275', '', null, null, null, null, null, '1797', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1299', '28', null, 'B1276', '', null, null, null, null, null, '1798', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1300', '28', null, 'B1277', '', null, null, null, null, null, '1799', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1301', '28', null, 'B1278', '', null, null, null, null, null, '1800', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1302', '28', null, 'B1279', '', null, null, null, null, null, '1801', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1303', '28', null, 'B1280', '', null, null, null, null, null, '1802', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1304', '28', null, 'B1281', '', null, null, null, null, null, '1803', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1305', '28', null, 'B1282', '', null, null, null, null, null, '1804', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1306', '28', null, 'B1283', '', null, null, null, null, null, '1805', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1307', '28', null, 'B1284', '', null, null, null, null, null, '1806', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1308', '28', null, 'B1285', '', null, null, null, null, null, '1807', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1309', '28', null, 'B1286', '', null, null, null, null, null, '1808', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1310', '28', null, 'B1287', '', null, null, null, null, null, '1809', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1311', '28', null, 'B1288', '', null, null, null, null, null, '1810', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1312', '28', null, 'B1289', '', null, null, null, null, null, '1811', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1313', '28', null, 'B1290', '', null, null, null, null, null, '1812', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1314', '28', null, 'B1291', '', null, null, null, null, null, '1813', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1315', '28', null, 'B1292', '', null, null, null, null, null, '1814', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1316', '28', null, 'B1293', '', null, null, null, null, null, '1815', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1317', '28', null, 'B1294', '', null, null, null, null, null, '1816', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1318', '28', null, 'B1295', '', null, null, null, null, null, '1817', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1319', '28', null, 'B1296', '', null, null, null, null, null, '1818', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1320', '28', null, 'B1297', '', null, null, null, null, null, '1819', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1321', '28', null, 'B1298', '', null, null, null, null, null, '1820', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1322', '28', null, 'B1299', '', null, null, null, null, null, '1821', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1323', '28', null, 'B1300', '', null, null, null, null, null, '1822', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1324', '28', null, 'B1301', '', null, null, null, null, null, '1823', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1325', '28', null, 'B1302', '', null, null, null, null, null, '1824', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1326', '28', null, 'B1303', '', null, null, null, null, null, '1825', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1327', '28', null, 'B1304', '', null, null, null, null, null, '1826', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1328', '28', null, 'B1305', '', null, null, null, null, null, '1827', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1329', '28', null, 'B1306', '', null, null, null, null, null, '1828', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1330', '28', null, 'B1307', '', null, null, null, null, null, '1829', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1331', '28', null, 'B1308', '', null, null, null, null, null, '1830', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1332', '28', null, 'B1309', '', null, null, null, null, null, '1831', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1333', '28', null, 'B1310', '', null, null, null, null, null, '1832', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1334', '28', null, 'B1311', '', null, null, null, null, null, '1833', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1335', '28', null, 'B1312', '', null, null, null, null, null, '1834', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1336', '28', null, 'B1313', '', null, null, null, null, null, '1835', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1337', '28', null, 'B1314', '', null, null, null, null, null, '1836', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1338', '28', null, 'B1315', '', null, null, null, null, null, '1837', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1339', '28', null, 'B1316', '', null, null, null, null, null, '1838', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1340', '28', null, 'B1317', '', null, null, null, null, null, '1839', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1341', '28', null, 'B1318', '', null, null, null, null, null, '1840', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1342', '28', null, 'B1319', '', null, null, null, null, null, '1841', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1343', '28', null, 'B1320', '', null, null, null, null, null, '1842', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1344', '28', null, 'B1321', '', null, null, null, null, null, '1843', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1345', '28', null, 'B1322', '', null, null, null, null, null, '1844', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1346', '28', null, 'B1323', '', null, null, null, null, null, '1845', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1347', '28', null, 'B1324', '', null, null, null, null, null, '1846', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1348', '28', null, 'B1325', '', null, null, null, null, null, '1847', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1349', '28', null, 'B1326', '', null, null, null, null, null, '1848', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1350', '28', null, 'B1327', '', null, null, null, null, null, '1849', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1351', '28', null, 'B1328', '', null, null, null, null, null, '1850', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1352', '28', null, 'B1329', '', null, null, null, null, null, '1851', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1353', '28', null, 'B1330', '', null, null, null, null, null, '1852', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1354', '28', null, 'B1331', '', null, null, null, null, null, '1853', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1355', '28', null, 'B1332', '', null, null, null, null, null, '1854', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1356', '28', null, 'B1333', '', null, null, null, null, null, '1855', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1357', '28', null, 'B1334', '', null, null, null, null, null, '1856', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1358', '28', null, 'B1335', '', null, null, null, null, null, '1857', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1359', '28', null, 'B1336', '', null, null, null, null, null, '1858', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1360', '28', null, 'B1337', '', null, null, null, null, null, '1859', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1361', '28', null, 'B1338', '', null, null, null, null, null, '1860', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1362', '28', null, 'B1339', '', null, null, null, null, null, '1861', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1363', '28', null, 'B1340', '', null, null, null, null, null, '1862', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1364', '28', null, 'B1341', '', null, null, null, null, null, '1863', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1365', '28', null, 'B1342', '', null, null, null, null, null, '1864', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1366', '28', null, 'B1343', '', null, null, null, null, null, '1865', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1367', '28', null, 'B1344', '', null, null, null, null, null, '1866', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1368', '28', null, 'B1345', '', null, null, null, null, null, '1867', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1369', '28', null, 'B1346', '', null, null, null, null, null, '1868', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1370', '28', null, 'B1347', '', null, null, null, null, null, '1869', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1371', '28', null, 'B1348', '', null, null, null, null, null, '1870', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1372', '28', null, 'B1349', '', null, null, null, null, null, '1871', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1373', '28', null, 'B1350', '', null, null, null, null, null, '1872', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1374', '28', null, 'B1351', '', null, null, null, null, null, '1873', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1375', '28', null, 'B1352', '', null, null, null, null, null, '1874', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1376', '28', null, 'B1353', '', null, null, null, null, null, '1875', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1377', '28', null, 'B1354', '', null, null, null, null, null, '1876', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1378', '28', null, 'B1355', '', null, null, null, null, null, '1877', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1379', '28', null, 'B1356', '', null, null, null, null, null, '1878', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1380', '28', null, 'B1357', '', null, null, null, null, null, '1879', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1381', '28', null, 'B1358', '', null, null, null, null, null, '1880', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1382', '28', null, 'B1359', '', null, null, null, null, null, '1881', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1383', '28', null, 'B1360', '', null, null, null, null, null, '1882', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1384', '28', null, 'B1361', '', null, null, null, null, null, '1883', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1385', '28', null, 'B1362', '', null, null, null, null, null, '1884', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1386', '28', null, 'B1363', '', null, null, null, null, null, '1885', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1387', '28', null, 'B1364', '', null, null, null, null, null, '1886', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1388', '28', null, 'B1365', '', null, null, null, null, null, '1887', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1389', '28', null, 'B1366', '', null, null, null, null, null, '1888', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1390', '28', null, 'B1367', '', null, null, null, null, null, '1889', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1391', '28', null, 'B1368', '', null, null, null, null, null, '1890', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1392', '28', null, 'B1369', '', null, null, null, null, null, '1891', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1393', '28', null, 'B1370', '', null, null, null, null, null, '1892', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1394', '28', null, 'B1371', '', null, null, null, null, null, '1893', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1395', '28', null, 'B1372', '', null, null, null, null, null, '1894', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1396', '28', null, 'B1373', '', null, null, null, null, null, '1895', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1397', '28', null, 'B1374', '', null, null, null, null, null, '1896', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1398', '28', null, 'B1375', '', null, null, null, null, null, '1897', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1399', '28', null, 'B1376', '', null, null, null, null, null, '1898', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1400', '28', null, 'B1377', '', null, null, null, null, null, '1899', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1401', '28', null, 'B1378', '', null, null, null, null, null, '1900', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1402', '28', null, 'B1379', '', null, null, null, null, null, '1901', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1403', '28', null, 'B1380', '', null, null, null, null, null, '1902', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1404', '28', null, 'B1381', '', null, null, null, null, null, '1903', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1405', '28', null, 'B1382', '', null, null, null, null, null, '1904', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1406', '28', null, 'B1383', '', null, null, null, null, null, '1905', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1407', '28', null, 'B1384', '', null, null, null, null, null, '1906', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1408', '28', null, 'B1385', '', null, null, null, null, null, '1907', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1409', '28', null, 'B1386', '', null, null, null, null, null, '1908', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1410', '28', null, 'B1387', '', null, null, null, null, null, '1909', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1411', '28', null, 'B1388', '', null, null, null, null, null, '1910', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1412', '28', null, 'B1389', '', null, null, null, null, null, '1911', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1413', '28', null, 'B1390', '', null, null, null, null, null, '1912', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1414', '28', null, 'B1391', '', null, null, null, null, null, '1913', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1415', '28', null, 'B1392', '', null, null, null, null, null, '1914', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1416', '28', null, 'B1393', '', null, null, null, null, null, '1915', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1417', '28', null, 'B1394', '', null, null, null, null, null, '1916', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1418', '28', null, 'B1395', '', null, null, null, null, null, '1917', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1419', '28', null, 'B1396', '', null, null, null, null, null, '1918', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1420', '28', null, 'B1397', '', null, null, null, null, null, '1919', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1421', '28', null, 'B1398', '', null, null, null, null, null, '1920', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1422', '28', null, 'B1399', '', null, null, null, null, null, '1921', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1423', '28', null, 'B1400', '', null, null, null, null, null, '1922', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1424', '28', null, 'B1401', '', null, null, null, null, null, '1923', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1425', '28', null, 'B1402', '', null, null, null, null, null, '1924', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1426', '28', null, 'B1403', '', null, null, null, null, null, '1925', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1427', '28', null, 'B1404', '', null, null, null, null, null, '1926', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1428', '28', null, 'B1405', '', null, null, null, null, null, '1927', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1429', '28', null, 'B1406', '', null, null, null, null, null, '1928', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1430', '28', null, 'B1407', '', null, null, null, null, null, '1929', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1431', '28', null, 'B1408', '', null, null, null, null, null, '1930', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1432', '28', null, 'B1409', '', null, null, null, null, null, '1931', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1433', '28', null, 'B1410', '', null, null, null, null, null, '1932', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1434', '28', null, 'B1411', '', null, null, null, null, null, '1933', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1435', '28', null, 'B1412', '', null, null, null, null, null, '1934', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1436', '28', null, 'B1413', '', null, null, null, null, null, '1935', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1437', '28', null, 'B1414', '', null, null, null, null, null, '1936', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1438', '28', null, 'B1415', '', null, null, null, null, null, '1937', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1439', '28', null, 'B1416', '', null, null, null, null, null, '1938', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1440', '28', null, 'B1417', '', null, null, null, null, null, '1939', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1441', '28', null, 'B1418', '', null, null, null, null, null, '1940', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1442', '28', null, 'B1419', '', null, null, null, null, null, '1941', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1443', '28', null, 'B1420', '', null, null, null, null, null, '1942', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1444', '28', null, 'B1421', '', null, null, null, null, null, '1943', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1445', '28', null, 'B1422', '', null, null, null, null, null, '1944', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1446', '28', null, 'B1423', '', null, null, null, null, null, '1945', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1447', '28', null, 'B1424', '', null, null, null, null, null, '1946', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1448', '28', null, 'B1425', '', null, null, null, null, null, '1947', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1449', '28', null, 'B1426', '', null, null, null, null, null, '1948', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1450', '28', null, 'B1427', '', null, null, null, null, null, '1949', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1451', '28', null, 'B1428', '', null, null, null, null, null, '1950', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1452', '28', null, 'B1429', '', null, null, null, null, null, '1951', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1453', '28', null, 'B1430', '', null, null, null, null, null, '1952', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1454', '28', null, 'B1431', '', null, null, null, null, null, '1953', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1455', '28', null, 'B1432', '', null, null, null, null, null, '1954', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1456', '28', null, 'B1433', '', null, null, null, null, null, '1955', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1457', '28', null, 'B1434', '', null, null, null, null, null, '1956', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1458', '28', null, 'B1435', '', null, null, null, null, null, '1957', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1459', '28', null, 'B1436', '', null, null, null, null, null, '1958', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1460', '28', null, 'B1437', '', null, null, null, null, null, '1959', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1461', '28', null, 'B1438', '', null, null, null, null, null, '1960', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1462', '28', null, 'B1439', '', null, null, null, null, null, '1961', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1463', '28', null, 'B1440', '', null, null, null, null, null, '1962', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1464', '28', null, 'B1441', '', null, null, null, null, null, '1963', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1465', '28', null, 'B1442', '', null, null, null, null, null, '1964', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1466', '28', null, 'B1443', '', null, null, null, null, null, '1965', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1467', '28', null, 'B1444', '', null, null, null, null, null, '1966', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1468', '28', null, 'B1445', '', null, null, null, null, null, '1967', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1469', '28', null, 'B1446', '', null, null, null, null, null, '1968', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1470', '28', null, 'B1447', '', null, null, null, null, null, '1969', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1471', '28', null, 'B1448', '', null, null, null, null, null, '1970', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1472', '28', null, 'B1449', '', null, null, null, null, null, '1971', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1473', '28', null, 'B1450', '', null, null, null, null, null, '1972', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1474', '28', null, 'B1451', '', null, null, null, null, null, '1973', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1475', '28', null, 'B1452', '', null, null, null, null, null, '1974', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1476', '28', null, 'B1453', '', null, null, null, null, null, '1975', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1477', '28', null, 'B1454', '', null, null, null, null, null, '1976', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1478', '28', null, 'B1455', '', null, null, null, null, null, '1977', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1479', '28', null, 'B1456', '', null, null, null, null, null, '1978', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1480', '28', null, 'B1457', '', null, null, null, null, null, '1979', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1481', '28', null, 'B1458', '', null, null, null, null, null, '1980', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1482', '28', null, 'B1459', '', null, null, null, null, null, '1981', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1483', '28', null, 'B1460', '', null, null, null, null, null, '1982', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1484', '28', null, 'B1461', '', null, null, null, null, null, '1983', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1485', '28', null, 'B1462', '', null, null, null, null, null, '1984', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1486', '28', null, 'B1463', '', null, null, null, null, null, '1985', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1487', '28', null, 'B1464', '', null, null, null, null, null, '1986', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1488', '28', null, 'B1465', '', null, null, null, null, null, '1987', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1489', '28', null, 'B1466', '', null, null, null, null, null, '1988', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1490', '28', null, 'B1467', '', null, null, null, null, null, '1989', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1491', '28', null, 'B1468', '', null, null, null, null, null, '1990', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1492', '28', null, 'B1469', '', null, null, null, null, null, '1991', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1493', '28', null, 'B1470', '', null, null, null, null, null, '1992', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1494', '28', null, 'B1471', '', null, null, null, null, null, '1993', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1495', '28', null, 'B1472', '', null, null, null, null, null, '1994', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1496', '28', null, 'B1473', '', null, null, null, null, null, '1995', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1497', '28', null, 'B1474', '', null, null, null, null, null, '1996', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1498', '28', null, 'B1475', '', null, null, null, null, null, '1997', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1499', '28', null, 'B1476', '', null, null, null, null, null, '1998', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1500', '28', null, 'B1477', '', null, null, null, null, null, '1999', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1501', '28', null, 'B1478', '', null, null, null, null, null, '2000', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1502', '28', null, 'B1479', '', null, null, null, null, null, '2001', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1503', '28', null, 'B1480', '', null, null, null, null, null, '2002', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1504', '28', null, 'B1481', '', null, null, null, null, null, '2003', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1505', '28', null, 'B1482', '', null, null, null, null, null, '2004', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1506', '28', null, 'B1483', '', null, null, null, null, null, '2005', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1507', '28', null, 'B1484', '', null, null, null, null, null, '2006', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1508', '28', null, 'B1485', '', null, null, null, null, null, '2007', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1509', '28', null, 'B1486', '', null, null, null, null, null, '2008', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1510', '28', null, 'B1487', '', null, null, null, null, null, '2009', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1511', '28', null, 'B1488', '', null, null, null, null, null, '2010', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1512', '28', null, 'B1489', '', null, null, null, null, null, '2011', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1513', '28', null, 'B1490', '', null, null, null, null, null, '2012', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1514', '28', null, 'B1491', '', null, null, null, null, null, '2013', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1515', '28', null, 'B1492', '', null, null, null, null, null, '2014', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1516', '28', null, 'B1493', '', null, null, null, null, null, '2015', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1517', '28', null, 'B1494', '', null, null, null, null, null, '2016', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1518', '28', null, 'B1495', '', null, null, null, null, null, '2017', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1519', '28', null, 'B1496', '', null, null, null, null, null, '2018', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1520', '28', null, 'B1497', '', null, null, null, null, null, '2019', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1521', '28', null, 'B1498', '', null, null, null, null, null, '2020', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1522', '28', null, 'B1499', '', null, null, null, null, null, '2021', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1523', '28', null, 'B1500', '', null, null, null, null, null, '2022', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1524', '28', null, 'B1501', '', null, null, null, null, null, '2023', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1525', '28', null, 'B1502', '', null, null, null, null, null, '2024', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1526', '28', null, 'B1503', '', null, null, null, null, null, '2025', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1527', '28', null, 'B1504', '', null, null, null, null, null, '2026', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1528', '28', null, 'B1505', '', null, null, null, null, null, '2027', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1529', '28', null, 'B1506', '', null, null, null, null, null, '2028', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1530', '28', null, 'B1507', '', null, null, null, null, null, '2029', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1531', '28', null, 'B1508', '', null, null, null, null, null, '2030', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1532', '28', null, 'B1509', '', null, null, null, null, null, '2031', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1533', '28', null, 'B1510', '', null, null, null, null, null, '2032', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1534', '28', null, 'B1511', '', null, null, null, null, null, '2033', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1535', '28', null, 'B1512', '', null, null, null, null, null, '2034', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1536', '28', null, 'B1513', '', null, null, null, null, null, '2035', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1537', '28', null, 'B1514', '', null, null, null, null, null, '2036', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1538', '28', null, 'B1515', '', null, null, null, null, null, '2037', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1539', '28', null, 'B1516', '', null, null, null, null, null, '2038', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1540', '28', null, 'B1517', '', null, null, null, null, null, '2039', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1541', '28', null, 'B1518', '', null, null, null, null, null, '2040', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1542', '28', null, 'B1519', '', null, null, null, null, null, '2041', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1543', '28', null, 'B1520', '', null, null, null, null, null, '2042', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1544', '28', null, 'B1521', '', null, null, null, null, null, '2043', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1545', '28', null, 'B1522', '', null, null, null, null, null, '2044', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1546', '28', null, 'B1523', '', null, null, null, null, null, '2045', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1547', '28', null, 'B1524', '', null, null, null, null, null, '2046', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1548', '28', null, 'B1525', '', null, null, null, null, null, '2047', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1549', '28', null, 'B1526', '', null, null, null, null, null, '2048', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1550', '28', null, 'B1527', '', null, null, null, null, null, '2049', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1551', '28', null, 'B1528', '', null, null, null, null, null, '2050', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1552', '28', null, 'B1529', '', null, null, null, null, null, '2051', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1553', '28', null, 'B1530', '', null, null, null, null, null, '2052', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1554', '28', null, 'B1531', '', null, null, null, null, null, '2053', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1555', '28', null, 'B1532', '', null, null, null, null, null, '2054', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1556', '28', null, 'B1533', '', null, null, null, null, null, '2055', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1557', '28', null, 'B1534', '', null, null, null, null, null, '2056', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1558', '28', null, 'B1535', '', null, null, null, null, null, '2057', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1559', '28', null, 'B1536', '', null, null, null, null, null, '2058', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1560', '28', null, 'B1537', '', null, null, null, null, null, '2059', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1561', '28', null, 'B1538', '', null, null, null, null, null, '2060', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1562', '28', null, 'B1539', '', null, null, null, null, null, '2061', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1563', '28', null, 'B1540', '', null, null, null, null, null, '2062', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1564', '28', null, 'B1541', '', null, null, null, null, null, '2063', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1565', '28', null, 'B1542', '', null, null, null, null, null, '2064', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1566', '28', null, 'B1543', '', null, null, null, null, null, '2065', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1567', '28', null, 'B1544', '', null, null, null, null, null, '2066', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1568', '28', null, 'B1545', '', null, null, null, null, null, '2067', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1569', '28', null, 'B1546', '', null, null, null, null, null, '2068', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1570', '28', null, 'B1547', '', null, null, null, null, null, '2069', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1571', '28', null, 'B1548', '', null, null, null, null, null, '2070', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1572', '28', null, 'B1549', '', null, null, null, null, null, '2071', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1573', '28', null, 'B1550', '', null, null, null, null, null, '2072', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1574', '28', null, 'B1551', '', null, null, null, null, null, '2073', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1575', '28', null, 'B1552', '', null, null, null, null, null, '2074', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1576', '28', null, 'B1553', '', null, null, null, null, null, '2075', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1577', '28', null, 'B1554', '', null, null, null, null, null, '2076', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1578', '28', null, 'B1555', '', null, null, null, null, null, '2077', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1579', '28', null, 'B1556', '', null, null, null, null, null, '2078', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1580', '28', null, 'B1557', '', null, null, null, null, null, '2079', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1581', '28', null, 'B1558', '', null, null, null, null, null, '2080', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1582', '28', null, 'B1559', '', null, null, null, null, null, '2081', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1583', '28', null, 'B1560', '', null, null, null, null, null, '2082', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1584', '28', null, 'B1561', '', null, null, null, null, null, '2083', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1585', '28', null, 'B1562', '', null, null, null, null, null, '2084', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1586', '28', null, 'B1563', '', null, null, null, null, null, '2085', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1587', '28', null, 'B1564', '', null, null, null, null, null, '2086', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1588', '28', null, 'B1565', '', null, null, null, null, null, '2087', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1589', '28', null, 'B1566', '', null, null, null, null, null, '2088', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1590', '28', null, 'B1567', '', null, null, null, null, null, '2089', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1591', '28', null, 'B1568', '', null, null, null, null, null, '2090', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1592', '28', null, 'B1569', '', null, null, null, null, null, '2091', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1593', '28', null, 'B1570', '', null, null, null, null, null, '2092', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1594', '28', null, 'B1571', '', null, null, null, null, null, '2093', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1595', '28', null, 'B1572', '', null, null, null, null, null, '2094', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1596', '28', null, 'B1573', '', null, null, null, null, null, '2095', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1597', '28', null, 'B1574', '', null, null, null, null, null, '2096', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1598', '28', null, 'B1575', '', null, null, null, null, null, '2097', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1599', '28', null, 'B1576', '', null, null, null, null, null, '2098', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1600', '28', null, 'B1577', '', null, null, null, null, null, '2099', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1601', '28', null, 'B1578', '', null, null, null, null, null, '2100', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1602', '28', null, 'B1579', '', null, null, null, null, null, '2101', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1603', '28', null, 'B1580', '', null, null, null, null, null, '2102', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1604', '28', null, 'B1581', '', null, null, null, null, null, '2103', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1605', '28', null, 'B1582', '', null, null, null, null, null, '2104', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1606', '28', null, 'B1583', '', null, null, null, null, null, '2105', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1607', '28', null, 'B1584', '', null, null, null, null, null, '2106', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1608', '28', null, 'B1585', '', null, null, null, null, null, '2107', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1609', '28', null, 'B1586', '', null, null, null, null, null, '2108', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1610', '28', null, 'B1587', '', null, null, null, null, null, '2109', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1611', '28', null, 'B1588', '', null, null, null, null, null, '2110', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1612', '28', null, 'B1589', '', null, null, null, null, null, '2111', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1613', '28', null, 'B1590', '', null, null, null, null, null, '2112', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1614', '28', null, 'B1591', '', null, null, null, null, null, '2113', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1615', '28', null, 'B1592', '', null, null, null, null, null, '2114', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1616', '28', null, 'B1593', '', null, null, null, null, null, '2115', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1617', '28', null, 'B1594', '', null, null, null, null, null, '2116', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1618', '28', null, 'B1595', '', null, null, null, null, null, '2117', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1619', '28', null, 'B1596', '', null, null, null, null, null, '2118', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1620', '28', null, 'B1597', '', null, null, null, null, null, '2119', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1621', '28', null, 'B1598', '', null, null, null, null, null, '2120', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1622', '28', null, 'B1599', '', null, null, null, null, null, '2121', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1623', '28', null, 'B1600', '', null, null, null, null, null, '2122', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1624', '28', null, 'B1601', '', null, null, null, null, null, '2123', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1625', '28', null, 'B1602', '', null, null, null, null, null, '2124', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1626', '28', null, 'B1603', '', null, null, null, null, null, '2125', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1627', '28', null, 'B1604', '', null, null, null, null, null, '2126', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1628', '28', null, 'B1605', '', null, null, null, null, null, '2127', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1629', '28', null, 'B1606', '', null, null, null, null, null, '2128', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1630', '28', null, 'B1607', '', null, null, null, null, null, '2129', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1631', '28', null, 'B1608', '', null, null, null, null, null, '2130', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1632', '28', null, 'B1609', '', null, null, null, null, null, '2131', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1633', '28', null, 'B1610', '', null, null, null, null, null, '2132', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1634', '28', null, 'B1611', '', null, null, null, null, null, '2133', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1635', '28', null, 'B1612', '', null, null, null, null, null, '2134', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1636', '28', null, 'B1613', '', null, null, null, null, null, '2135', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1637', '28', null, 'B1614', '', null, null, null, null, null, '2136', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1638', '28', null, 'B1615', '', null, null, null, null, null, '2137', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1639', '28', null, 'B1616', '', null, null, null, null, null, '2138', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1640', '28', null, 'B1617', '', null, null, null, null, null, '2139', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1641', '28', null, 'B1618', '', null, null, null, null, null, '2140', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1642', '28', null, 'B1619', '', null, null, null, null, null, '2141', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1643', '28', null, 'B1620', '', null, null, null, null, null, '2142', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1644', '28', null, 'B1621', '', null, null, null, null, null, '2143', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1645', '28', null, 'B1622', '', null, null, null, null, null, '2144', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1646', '28', null, 'B1623', '', null, null, null, null, null, '2145', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1647', '28', null, 'B1624', '', null, null, null, null, null, '2146', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1648', '28', null, 'B1625', '', null, null, null, null, null, '2147', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1649', '28', null, 'B1626', '', null, null, null, null, null, '2148', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1650', '28', null, 'B1627', '', null, null, null, null, null, '2149', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1651', '28', null, 'B1628', '', null, null, null, null, null, '2150', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1652', '28', null, 'B1629', '', null, null, null, null, null, '2151', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1653', '28', null, 'B1630', '', null, null, null, null, null, '2152', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1654', '28', null, 'B1631', '', null, null, null, null, null, '2153', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1655', '28', null, 'B1632', '', null, null, null, null, null, '2154', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1656', '28', null, 'B1633', '', null, null, null, null, null, '2155', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1657', '28', null, 'B1634', '', null, null, null, null, null, '2156', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1658', '28', null, 'B1635', '', null, null, null, null, null, '2157', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1659', '28', null, 'B1636', '', null, null, null, null, null, '2158', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1660', '28', null, 'B1637', '', null, null, null, null, null, '2159', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1661', '28', null, 'B1638', '', null, null, null, null, null, '2160', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1662', '28', null, 'B1639', '', null, null, null, null, null, '2161', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1663', '28', null, 'B1640', '', null, null, null, null, null, '2162', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1664', '28', null, 'B1641', '', null, null, null, null, null, '2163', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1665', '28', null, 'B1642', '', null, null, null, null, null, '2164', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1666', '28', null, 'B1643', '', null, null, null, null, null, '2165', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1667', '28', null, 'B1644', '', null, null, null, null, null, '2166', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1668', '28', null, 'B1645', '', null, null, null, null, null, '2167', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1669', '28', null, 'B1646', '', null, null, null, null, null, '2168', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1670', '28', null, 'B1647', '', null, null, null, null, null, '2169', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1671', '28', null, 'B1648', '', null, null, null, null, null, '2170', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1672', '28', null, 'B1649', '', null, null, null, null, null, '2171', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1673', '28', null, 'B1650', '', null, null, null, null, null, '2172', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1674', '28', null, 'B1651', '', null, null, null, null, null, '2173', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1675', '28', null, 'B1652', '', null, null, null, null, null, '2174', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1676', '28', null, 'B1653', '', null, null, null, null, null, '2175', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1677', '28', null, 'B1654', '', null, null, null, null, null, '2176', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1678', '28', null, 'B1655', '', null, null, null, null, null, '2177', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1679', '28', null, 'B1656', '', null, null, null, null, null, '2178', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1680', '28', null, 'B1657', '', null, null, null, null, null, '2179', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1681', '28', null, 'B1658', '', null, null, null, null, null, '2180', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1682', '28', null, 'B1659', '', null, null, null, null, null, '2181', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1683', '28', null, 'B1660', '', null, null, null, null, null, '2182', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1684', '28', null, 'B1661', '', null, null, null, null, null, '2183', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1685', '28', null, 'B1662', '', null, null, null, null, null, '2184', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1686', '28', null, 'B1663', '', null, null, null, null, null, '2185', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1687', '28', null, 'B1664', '', null, null, null, null, null, '2186', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1688', '28', null, 'B1665', '', null, null, null, null, null, '2187', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1689', '28', null, 'B1666', '', null, null, null, null, null, '2188', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1690', '28', null, 'B1667', '', null, null, null, null, null, '2189', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1691', '28', null, 'B1668', '', null, null, null, null, null, '2190', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1692', '28', null, 'B1669', '', null, null, null, null, null, '2191', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1693', '28', null, 'B1670', '', null, null, null, null, null, '2192', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1694', '28', null, 'B1671', '', null, null, null, null, null, '2193', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1695', '28', null, 'B1672', '', null, null, null, null, null, '2194', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1696', '28', null, 'B1673', '', null, null, null, null, null, '2195', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1697', '28', null, 'B1674', '', null, null, null, null, null, '2196', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1698', '28', null, 'B1675', '', null, null, null, null, null, '2197', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1699', '28', null, 'B1676', '', null, null, null, null, null, '2198', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1700', '28', null, 'B1677', '', null, null, null, null, null, '2199', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1701', '28', null, 'B1678', '', null, null, null, null, null, '2200', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1702', '28', null, 'B1679', '', null, null, null, null, null, '2201', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1703', '28', null, 'B1680', '', null, null, null, null, null, '2202', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1704', '28', null, 'B1681', '', null, null, null, null, null, '2203', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1705', '28', null, 'B1682', '', null, null, null, null, null, '2204', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1706', '28', null, 'B1683', '', null, null, null, null, null, '2205', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1707', '28', null, 'B1684', '', null, null, null, null, null, '2206', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1708', '28', null, 'B1685', '', null, null, null, null, null, '2207', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1709', '28', null, 'B1686', '', null, null, null, null, null, '2208', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1710', '28', null, 'B1687', '', null, null, null, null, null, '2209', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1711', '28', null, 'B1688', '', null, null, null, null, null, '2210', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1712', '28', null, 'B1689', '', null, null, null, null, null, '2211', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1713', '28', null, 'B1690', '', null, null, null, null, null, '2212', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1714', '28', null, 'B1691', '', null, null, null, null, null, '2213', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1715', '28', null, 'B1692', '', null, null, null, null, null, '2214', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1716', '28', null, 'B1693', '', null, null, null, null, null, '2215', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1717', '28', null, 'B1694', '', null, null, null, null, null, '2216', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1718', '28', null, 'B1695', '', null, null, null, null, null, '2217', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1719', '28', null, 'B1696', '', null, null, null, null, null, '2218', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1720', '28', null, 'B1697', '', null, null, null, null, null, '2219', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1721', '28', null, 'B1698', '', null, null, null, null, null, '2220', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1722', '28', null, 'B1699', '', null, null, null, null, null, '2221', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1723', '28', null, 'B1700', '', null, null, null, null, null, '2222', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1724', '28', null, 'B1701', '', null, null, null, null, null, '2223', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1725', '28', null, 'B1702', '', null, null, null, null, null, '2224', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1726', '28', null, 'B1703', '', null, null, null, null, null, '2225', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1727', '28', null, 'B1704', '', null, null, null, null, null, '2226', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1728', '28', null, 'B1705', '', null, null, null, null, null, '2227', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1729', '28', null, 'B1706', '', null, null, null, null, null, '2228', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1730', '28', null, 'B1707', '', null, null, null, null, null, '2229', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1731', '28', null, 'B1708', '', null, null, null, null, null, '2230', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1732', '28', null, 'B1709', '', null, null, null, null, null, '2231', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1733', '28', null, 'B1710', '', null, null, null, null, null, '2232', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1734', '28', null, 'B1711', '', null, null, null, null, null, '2233', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1735', '28', null, 'B1712', '', null, null, null, null, null, '2234', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1736', '28', null, 'B1713', '', null, null, null, null, null, '2235', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1737', '28', null, 'B1714', '', null, null, null, null, null, '2236', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1738', '28', null, 'B1715', '', null, null, null, null, null, '2237', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1739', '28', null, 'B1716', '', null, null, null, null, null, '2238', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1740', '28', null, 'B1717', '', null, null, null, null, null, '2239', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1741', '28', null, 'B1718', '', null, null, null, null, null, '2240', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1742', '28', null, 'B1719', '', null, null, null, null, null, '2241', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1743', '28', null, 'B1720', '', null, null, null, null, null, '2242', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1744', '28', null, 'B1721', '', null, null, null, null, null, '2243', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1745', '28', null, 'B1722', '', null, null, null, null, null, '2244', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1746', '28', null, 'B1723', '', null, null, null, null, null, '2245', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1747', '28', null, 'B1724', '', null, null, null, null, null, '2246', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1748', '28', null, 'B1725', '', null, null, null, null, null, '2247', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1749', '28', null, 'B1726', '', null, null, null, null, null, '2248', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1750', '28', null, 'B1727', '', null, null, null, null, null, '2249', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1751', '28', null, 'B1728', '', null, null, null, null, null, '2250', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1752', '28', null, 'B1729', '', null, null, null, null, null, '2251', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1753', '28', null, 'B1730', '', null, null, null, null, null, '2252', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1754', '28', null, 'B1731', '', null, null, null, null, null, '2253', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1755', '28', null, 'B1732', '', null, null, null, null, null, '2254', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1756', '28', null, 'B1733', '', null, null, null, null, null, '2255', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1757', '28', null, 'B1734', '', null, null, null, null, null, '2256', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1758', '28', null, 'B1735', '', null, null, null, null, null, '2257', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1759', '28', null, 'B1736', '', null, null, null, null, null, '2258', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1760', '28', null, 'B1737', '', null, null, null, null, null, '2259', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1761', '28', null, 'B1738', '', null, null, null, null, null, '2260', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1762', '28', null, 'B1739', '', null, null, null, null, null, '2261', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1763', '28', null, 'B1740', '', null, null, null, null, null, '2262', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1764', '28', null, 'B1741', '', null, null, null, null, null, '2263', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1765', '28', null, 'B1742', '', null, null, null, null, null, '2264', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1766', '28', null, 'B1743', '', null, null, null, null, null, '2265', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1767', '28', null, 'B1744', '', null, null, null, null, null, '2266', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1768', '28', null, 'B1745', '', null, null, null, null, null, '2267', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1769', '28', null, 'B1746', '', null, null, null, null, null, '2268', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1770', '28', null, 'B1747', '', null, null, null, null, null, '2269', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1771', '28', null, 'B1748', '', null, null, null, null, null, '2270', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1772', '28', null, 'B1749', '', null, null, null, null, null, '2271', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1773', '28', null, 'B1750', '', null, null, null, null, null, '2272', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1774', '28', null, 'B1751', '', null, null, null, null, null, '2273', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1775', '28', null, 'B1752', '', null, null, null, null, null, '2274', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1776', '28', null, 'B1753', '', null, null, null, null, null, '2275', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1777', '28', null, 'B1754', '', null, null, null, null, null, '2276', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1778', '28', null, 'B1755', '', null, null, null, null, null, '2277', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1779', '28', null, 'B1756', '', null, null, null, null, null, '2278', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1780', '28', null, 'B1757', '', null, null, null, null, null, '2279', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1781', '28', null, 'B1758', '', null, null, null, null, null, '2280', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1782', '28', null, 'B1759', '', null, null, null, null, null, '2281', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1783', '28', null, 'B1760', '', null, null, null, null, null, '2282', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1784', '28', null, 'B1761', '', null, null, null, null, null, '2283', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1785', '28', null, 'B1762', '', null, null, null, null, null, '2284', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1786', '28', null, 'B1763', '', null, null, null, null, null, '2285', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1787', '28', null, 'B1764', '', null, null, null, null, null, '2286', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1788', '28', null, 'B1765', '', null, null, null, null, null, '2287', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1789', '28', null, 'B1766', '', null, null, null, null, null, '2288', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1790', '28', null, 'B1767', '', null, null, null, null, null, '2289', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1791', '28', null, 'B1768', '', null, null, null, null, null, '2290', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1792', '28', null, 'B1769', '', null, null, null, null, null, '2291', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1793', '28', null, 'B1770', '', null, null, null, null, null, '2292', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1794', '28', null, 'B1771', '', null, null, null, null, null, '2293', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1795', '28', null, 'B1772', '', null, null, null, null, null, '2294', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1796', '28', null, 'B1773', '', null, null, null, null, null, '2295', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1797', '28', null, 'B1774', '', null, null, null, null, null, '2296', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1798', '28', null, 'B1775', '', null, null, null, null, null, '2297', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1799', '28', null, 'B1776', '', null, null, null, null, null, '2298', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1800', '28', null, 'B1777', '', null, null, null, null, null, '2299', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1801', '28', null, 'B1778', '', null, null, null, null, null, '2300', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1802', '28', null, 'B1779', '', null, null, null, null, null, '2301', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1803', '28', null, 'B1780', '', null, null, null, null, null, '2302', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1804', '28', null, 'B1781', '', null, null, null, null, null, '2303', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1805', '28', null, 'B1782', '', null, null, null, null, null, '2304', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1806', '28', null, 'B1783', '', null, null, null, null, null, '2305', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1807', '28', null, 'B1784', '', null, null, null, null, null, '2306', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1808', '28', null, 'B1785', '', null, null, null, null, null, '2307', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1809', '28', null, 'B1786', '', null, null, null, null, null, '2308', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1810', '28', null, 'B1787', '', null, null, null, null, null, '2309', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1811', '28', null, 'B1788', '', null, null, null, null, null, '2310', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1812', '28', null, 'B1789', '', null, null, null, null, null, '2311', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1813', '28', null, 'B1790', '', null, null, null, null, null, '2312', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1814', '28', null, 'B1791', '', null, null, null, null, null, '2313', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1815', '28', null, 'B1792', '', null, null, null, null, null, '2314', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1816', '28', null, 'B1793', '', null, null, null, null, null, '2315', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1817', '28', null, 'B1794', '', null, null, null, null, null, '2316', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1818', '28', null, 'B1795', '', null, null, null, null, null, '2317', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1819', '28', null, 'B1796', '', null, null, null, null, null, '2318', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1820', '28', null, 'B1797', '', null, null, null, null, null, '2319', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1821', '28', null, 'B1798', '', null, null, null, null, null, '2320', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1822', '28', null, 'B1799', '', null, null, null, null, null, '2321', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1823', '28', null, 'B1800', '', null, null, null, null, null, '2322', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1824', '28', null, 'B1801', '', null, null, null, null, null, '2323', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1825', '28', null, 'B1802', '', null, null, null, null, null, '2324', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1826', '28', null, 'B1803', '', null, null, null, null, null, '2325', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1827', '28', null, 'B1804', '', null, null, null, null, null, '2326', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1828', '28', null, 'B1805', '', null, null, null, null, null, '2327', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1829', '28', null, 'B1806', '', null, null, null, null, null, '2328', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1830', '28', null, 'B1807', '', null, null, null, null, null, '2329', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1831', '28', null, 'B1808', '', null, null, null, null, null, '2330', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1832', '28', null, 'B1809', '', null, null, null, null, null, '2331', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1833', '28', null, 'B1810', '', null, null, null, null, null, '2332', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1834', '28', null, 'B1811', '', null, null, null, null, null, '2333', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1835', '28', null, 'B1812', '', null, null, null, null, null, '2334', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1836', '28', null, 'B1813', '', null, null, null, null, null, '2335', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1837', '28', null, 'B1814', '', null, null, null, null, null, '2336', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1838', '28', null, 'B1815', '', null, null, null, null, null, '2337', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1839', '28', null, 'B1816', '', null, null, null, null, null, '2338', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1840', '28', null, 'B1817', '', null, null, null, null, null, '2339', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1841', '28', null, 'B1818', '', null, null, null, null, null, '2340', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1842', '28', null, 'B1819', '', null, null, null, null, null, '2341', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1843', '28', null, 'B1820', '', null, null, null, null, null, '2342', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1844', '28', null, 'B1821', '', null, null, null, null, null, '2343', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1845', '28', null, 'B1822', '', null, null, null, null, null, '2344', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1846', '28', null, 'B1823', '', null, null, null, null, null, '2345', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1847', '28', null, 'B1824', '', null, null, null, null, null, '2346', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1848', '28', null, 'B1825', '', null, null, null, null, null, '2347', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1849', '28', null, 'B1826', '', null, null, null, null, null, '2348', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1850', '28', null, 'B1827', '', null, null, null, null, null, '2349', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1851', '28', null, 'B1828', '', null, null, null, null, null, '2350', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1852', '28', null, 'B1829', '', null, null, null, null, null, '2351', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1853', '28', null, 'B1830', '', null, null, null, null, null, '2352', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1854', '28', null, 'B1831', '', null, null, null, null, null, '2353', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1855', '28', null, 'B1832', '', null, null, null, null, null, '2354', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1856', '28', null, 'B1833', '', null, null, null, null, null, '2355', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1857', '28', null, 'B1834', '', null, null, null, null, null, '2356', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1858', '28', null, 'B1835', '', null, null, null, null, null, '2357', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1859', '28', null, 'B1836', '', null, null, null, null, null, '2358', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1860', '28', null, 'B1837', '', null, null, null, null, null, '2359', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1861', '28', null, 'B1838', '', null, null, null, null, null, '2360', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1862', '28', null, 'B1839', '', null, null, null, null, null, '2361', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1863', '28', null, 'B1840', '', null, null, null, null, null, '2362', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1864', '28', null, 'B1841', '', null, null, null, null, null, '2363', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1865', '28', null, 'B1842', '', null, null, null, null, null, '2364', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1866', '28', null, 'B1843', '', null, null, null, null, null, '2365', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1867', '28', null, 'B1844', '', null, null, null, null, null, '2366', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1868', '28', null, 'B1845', '', null, null, null, null, null, '2367', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1869', '28', null, 'B1846', '', null, null, null, null, null, '2368', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1870', '28', null, 'B1847', '', null, null, null, null, null, '2369', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1871', '28', null, 'B1848', '', null, null, null, null, null, '2370', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1872', '28', null, 'B1849', '', null, null, null, null, null, '2371', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1873', '28', null, 'B1850', '', null, null, null, null, null, '2372', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1874', '28', null, 'B1851', '', null, null, null, null, null, '2373', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1875', '28', null, 'B1852', '', null, null, null, null, null, '2374', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1876', '28', null, 'B1853', '', null, null, null, null, null, '2375', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1877', '28', null, 'B1854', '', null, null, null, null, null, '2376', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1878', '28', null, 'B1855', '', null, null, null, null, null, '2377', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1879', '28', null, 'B1856', '', null, null, null, null, null, '2378', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1880', '28', null, 'B1857', '', null, null, null, null, null, '2379', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1881', '28', null, 'B1858', '', null, null, null, null, null, '2380', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1882', '28', null, 'B1859', '', null, null, null, null, null, '2381', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1883', '28', null, 'B1860', '', null, null, null, null, null, '2382', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1884', '28', null, 'B1861', '', null, null, null, null, null, '2383', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1885', '28', null, 'B1862', '', null, null, null, null, null, '2384', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1886', '28', null, 'B1863', '', null, null, null, null, null, '2385', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1887', '28', null, 'B1864', '', null, null, null, null, null, '2386', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1888', '28', null, 'B1865', '', null, null, null, null, null, '2387', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1889', '28', null, 'B1866', '', null, null, null, null, null, '2388', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1890', '28', null, 'B1867', '', null, null, null, null, null, '2389', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1891', '28', null, 'B1868', '', null, null, null, null, null, '2390', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1892', '28', null, 'B1869', '', null, null, null, null, null, '2391', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1893', '28', null, 'B1870', '', null, null, null, null, null, '2392', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1894', '28', null, 'B1871', '', null, null, null, null, null, '2393', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1895', '28', null, 'B1872', '', null, null, null, null, null, '2394', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1896', '28', null, 'B1873', '', null, null, null, null, null, '2395', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1897', '28', null, 'B1874', '', null, null, null, null, null, '2396', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1898', '28', null, 'B1875', '', null, null, null, null, null, '2397', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1899', '28', null, 'B1876', '', null, null, null, null, null, '2398', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1900', '28', null, 'B1877', '', null, null, null, null, null, '2399', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1901', '28', null, 'B1878', '', null, null, null, null, null, '2400', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1902', '28', null, 'B1879', '', null, null, null, null, null, '2401', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1903', '28', null, 'B1880', '', null, null, null, null, null, '2402', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1904', '28', null, 'B1881', '', null, null, null, null, null, '2403', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1905', '28', null, 'B1882', '', null, null, null, null, null, '2404', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1906', '28', null, 'B1883', '', null, null, null, null, null, '2405', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1907', '28', null, 'B1884', '', null, null, null, null, null, '2406', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1908', '28', null, 'B1885', '', null, null, null, null, null, '2407', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1909', '28', null, 'B1886', '', null, null, null, null, null, '2408', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1910', '28', null, 'B1887', '', null, null, null, null, null, '2409', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1911', '28', null, 'B1888', '', null, null, null, null, null, '2410', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1912', '28', null, 'B1889', '', null, null, null, null, null, '2411', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1913', '28', null, 'B1890', '', null, null, null, null, null, '2412', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1914', '28', null, 'B1891', '', null, null, null, null, null, '2413', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1915', '28', null, 'B1892', '', null, null, null, null, null, '2414', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1916', '28', null, 'B1893', '', null, null, null, null, null, '2415', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1917', '28', null, 'B1894', '', null, null, null, null, null, '2416', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1918', '28', null, 'B1895', '', null, null, null, null, null, '2417', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1919', '28', null, 'B1896', '', null, null, null, null, null, '2418', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1920', '28', null, 'B1897', '', null, null, null, null, null, '2419', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1921', '28', null, 'B1898', '', null, null, null, null, null, '2420', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1922', '28', null, 'B1899', '', null, null, null, null, null, '2421', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1923', '28', null, 'B1900', '', null, null, null, null, null, '2422', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1924', '28', null, 'B1901', '', null, null, null, null, null, '2423', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1925', '28', null, 'B1902', '', null, null, null, null, null, '2424', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1926', '28', null, 'B1903', '', null, null, null, null, null, '2425', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1927', '28', null, 'B1904', '', null, null, null, null, null, '2426', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1928', '28', null, 'B1905', '', null, null, null, null, null, '2427', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1929', '28', null, 'B1906', '', null, null, null, null, null, '2428', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1930', '28', null, 'B1907', '', null, null, null, null, null, '2429', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1931', '28', null, 'B1908', '', null, null, null, null, null, '2430', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1932', '28', null, 'B1909', '', null, null, null, null, null, '2431', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1933', '28', null, 'B1910', '', null, null, null, null, null, '2432', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1934', '28', null, 'B1911', '', null, null, null, null, null, '2433', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1935', '28', null, 'B1912', '', null, null, null, null, null, '2434', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1936', '28', null, 'B1913', '', null, null, null, null, null, '2435', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1937', '28', null, 'B1914', '', null, null, null, null, null, '2436', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1938', '28', null, 'B1915', '', null, null, null, null, null, '2437', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1939', '28', null, 'B1916', '', null, null, null, null, null, '2438', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1940', '28', null, 'B1917', '', null, null, null, null, null, '2439', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1941', '28', null, 'B1918', '', null, null, null, null, null, '2440', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1942', '28', null, 'B1919', '', null, null, null, null, null, '2441', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1943', '28', null, 'B1920', '', null, null, null, null, null, '2442', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1944', '28', null, 'B1921', '', null, null, null, null, null, '2443', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1945', '28', null, 'B1922', '', null, null, null, null, null, '2444', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1946', '28', null, 'B1923', '', null, null, null, null, null, '2445', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1947', '28', null, 'B1924', '', null, null, null, null, null, '2446', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1948', '28', null, 'B1925', '', null, null, null, null, null, '2447', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1949', '28', null, 'B1926', '', null, null, null, null, null, '2448', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1950', '28', null, 'B1927', '', null, null, null, null, null, '2449', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1951', '28', null, 'B1928', '', null, null, null, null, null, '2450', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1952', '28', null, 'B1929', '', null, null, null, null, null, '2451', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1953', '28', null, 'B1930', '', null, null, null, null, null, '2452', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1954', '28', null, 'B1931', '', null, null, null, null, null, '2453', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1955', '28', null, 'B1932', '', null, null, null, null, null, '2454', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1956', '28', null, 'B1933', '', null, null, null, null, null, '2455', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1957', '28', null, 'B1934', '', null, null, null, null, null, '2456', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1958', '28', null, 'B1935', '', null, null, null, null, null, '2457', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1959', '28', null, 'B1936', '', null, null, null, null, null, '2458', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1960', '28', null, 'B1937', '', null, null, null, null, null, '2459', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1961', '28', null, 'B1938', '', null, null, null, null, null, '2460', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1962', '28', null, 'B1939', '', null, null, null, null, null, '2461', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1963', '28', null, 'B1940', '', null, null, null, null, null, '2462', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1964', '28', null, 'B1941', '', null, null, null, null, null, '2463', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1965', '28', null, 'B1942', '', null, null, null, null, null, '2464', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1966', '28', null, 'B1943', '', null, null, null, null, null, '2465', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1967', '28', null, 'B1944', '', null, null, null, null, null, '2466', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1968', '28', null, 'B1945', '', null, null, null, null, null, '2467', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1969', '28', null, 'B1946', '', null, null, null, null, null, '2468', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1970', '28', null, 'B1947', '', null, null, null, null, null, '2469', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1971', '28', null, 'B1948', '', null, null, null, null, null, '2470', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1972', '28', null, 'B1949', '', null, null, null, null, null, '2471', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1973', '28', null, 'B1950', '', null, null, null, null, null, '2472', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1974', '28', null, 'B1951', '', null, null, null, null, null, '2473', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1975', '28', null, 'B1952', '', null, null, null, null, null, '2474', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1976', '28', null, 'B1953', '', null, null, null, null, null, '2475', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1977', '28', null, 'B1954', '', null, null, null, null, null, '2476', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1978', '28', null, 'B1955', '', null, null, null, null, null, '2477', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1979', '28', null, 'B1956', '', null, null, null, null, null, '2478', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1980', '28', null, 'B1957', '', null, null, null, null, null, '2479', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1981', '28', null, 'B1958', '', null, null, null, null, null, '2480', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1982', '28', null, 'B1959', '', null, null, null, null, null, '2481', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1983', '28', null, 'B1960', '', null, null, null, null, null, '2482', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1984', '28', null, 'B1961', '', null, null, null, null, null, '2483', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1985', '28', null, 'B1962', '', null, null, null, null, null, '2484', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1986', '28', null, 'B1963', '', null, null, null, null, null, '2485', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1987', '28', null, 'B1964', '', null, null, null, null, null, '2486', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1988', '28', null, 'B1965', '', null, null, null, null, null, '2487', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1989', '28', null, 'B1966', '', null, null, null, null, null, '2488', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1990', '28', null, 'B1967', '', null, null, null, null, null, '2489', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1991', '28', null, 'B1968', '', null, null, null, null, null, '2490', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1992', '28', null, 'B1969', '', null, null, null, null, null, '2491', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1993', '28', null, 'B1970', '', null, null, null, null, null, '2492', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1994', '28', null, 'B1971', '', null, null, null, null, null, '2493', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1995', '28', null, 'B1972', '', null, null, null, null, null, '2494', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1996', '28', null, 'B1973', '', null, null, null, null, null, '2495', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1997', '28', null, 'B1974', '', null, null, null, null, null, '2496', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1998', '28', null, 'B1975', '', null, null, null, null, null, '2497', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('1999', '28', null, 'B1976', '', null, null, null, null, null, '2498', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2000', '28', null, 'B1977', '', null, null, null, null, null, '2499', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2001', '28', null, 'B1978', '', null, null, null, null, null, '2500', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2002', '28', null, 'B1979', '', null, null, null, null, null, '2501', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2003', '28', null, 'B1980', '', null, null, null, null, null, '2502', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2004', '28', null, 'B1981', '', null, null, null, null, null, '2503', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2005', '28', null, 'B1982', '', null, null, null, null, null, '2504', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2006', '28', null, 'B1983', '', null, null, null, null, null, '2505', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2007', '28', null, 'B1984', '', null, null, null, null, null, '2506', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2008', '28', null, 'B1985', '', null, null, null, null, null, '2507', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2009', '28', null, 'B1986', '', null, null, null, null, null, '2508', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2010', '28', null, 'B1987', '', null, null, null, null, null, '2509', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2011', '28', null, 'B1988', '', null, null, null, null, null, '2510', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2012', '28', null, 'B1989', '', null, null, null, null, null, '2511', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2013', '28', null, 'B1990', '', null, null, null, null, null, '2512', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2014', '28', null, 'B1991', '', null, null, null, null, null, '2513', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2015', '28', null, 'B1992', '', null, null, null, null, null, '2514', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2016', '28', null, 'B1993', '', null, null, null, null, null, '2515', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2017', '28', null, 'B1994', '', null, null, null, null, null, '2516', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2018', '28', null, 'B1995', '', null, null, null, null, null, '2517', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2019', '28', null, 'B1996', '', null, null, null, null, null, '2518', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2020', '28', null, 'B1997', '', null, null, null, null, null, '2519', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2021', '28', null, 'B1998', '', null, null, null, null, null, '2520', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2022', '28', null, 'B1999', '', null, null, null, null, null, '2521', '400', '0');
INSERT INTO `wx_member_entitycard` VALUES ('2023', '28', null, 'N100003', '', null, null, null, null, null, '14200', '200', '0');

-- ----------------------------
-- Table structure for `wx_member_info`
-- ----------------------------
DROP TABLE IF EXISTS `wx_member_info`;
CREATE TABLE `wx_member_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `openid` bigint(50) DEFAULT NULL COMMENT '唯一微信ID',
  `jifen` varchar(50) DEFAULT NULL,
  `yue` varchar(50) DEFAULT NULL,
  `card_binded` varchar(50) DEFAULT NULL COMMENT '是否绑定实体卡  1绑定 0未绑定',
  `info_perfect` varchar(50) DEFAULT NULL COMMENT '是否完善个人资料  1绑定 0未绑定',
  `createtime` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `card_id` varchar(50) DEFAULT NULL,
  `card_name` varchar(50) DEFAULT NULL,
  `card_sex` varchar(50) DEFAULT NULL COMMENT '1男 2女',
  `card_tel` varchar(50) DEFAULT NULL,
  `card_birthday` varchar(50) DEFAULT NULL,
  `card_remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_member_info
-- ----------------------------
INSERT INTO `wx_member_info` VALUES ('12', '28', '23', '0', '0', null, null, '2014-08-18 11:55:50', null, null, null, null, null, null, null);
INSERT INTO `wx_member_info` VALUES ('13', '28', '24', '0', '0', null, null, '2014-08-18 11:56:17', null, null, null, null, null, null, null);
INSERT INTO `wx_member_info` VALUES ('14', '28', '20', '62', '0', null, '1', '2014-08-18 12:07:48', '2014-08-20 15:29:10', null, '个', '1', '123', '2013-02-04', null);
INSERT INTO `wx_member_info` VALUES ('16', '28', '25', '2', '0', null, '1', '2014-08-18 12:25:29', '2014-08-18 12:26:50', null, '白玉亮', '1', '13071200565', '1988-11-28', null);
INSERT INTO `wx_member_info` VALUES ('17', '28', '26', '5', '0', null, null, '2014-08-18 13:48:53', '2015-01-26 15:46:08', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `wx_member_info_cog`
-- ----------------------------
DROP TABLE IF EXISTS `wx_member_info_cog`;
CREATE TABLE `wx_member_info_cog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `memberInfo_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT '',
  `member_number` varchar(50) DEFAULT NULL,
  `member_lbs` varchar(50) DEFAULT NULL,
  `member_explan` varchar(255) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_member_info_cog
-- ----------------------------
INSERT INTO `wx_member_info_cog` VALUES ('1', '8', '28', '1', '10', '0', '', '2014-08-06 12:40:11');
INSERT INTO `wx_member_info_cog` VALUES ('2', '8', '28', '2', '2', '0', '', '2014-08-06 14:34:44');
INSERT INTO `wx_member_info_cog` VALUES ('3', '8', '28', '1', '1', '0', '', '2014-08-06 16:40:53');
INSERT INTO `wx_member_info_cog` VALUES ('4', '8', '28', '2', '2', '0', '', '2014-08-06 16:40:57');
INSERT INTO `wx_member_info_cog` VALUES ('5', '8', '28', '3', '2', '1', '', '2014-08-06 16:41:03');
INSERT INTO `wx_member_info_cog` VALUES ('6', '8', '28', '4', '5', '0', '', '2014-08-06 16:41:07');
INSERT INTO `wx_member_info_cog` VALUES ('7', '8', '28', '3', '2', '0', '', '2014-08-06 16:41:10');
INSERT INTO `wx_member_info_cog` VALUES ('8', '8', '28', '5', '2', '0', '每日签到赠积分', '2014-08-06 16:41:55');
INSERT INTO `wx_member_info_cog` VALUES ('9', '8', '28', '6', '80', '0', '现金消费100元,赠送80积分', '2014-08-06 16:42:12');
INSERT INTO `wx_member_info_cog` VALUES ('10', '8', '28', '2', '2', '0', '67', '2014-08-06 16:42:26');
INSERT INTO `wx_member_info_cog` VALUES ('11', '8', '28', '6', '1', '0', '余额消费2元,赠送1积分', '2014-08-06 16:42:26');
INSERT INTO `wx_member_info_cog` VALUES ('12', '8', '28', '1', '2', '0', '4', '2014-08-06 16:42:37');
INSERT INTO `wx_member_info_cog` VALUES ('13', '8', '28', '1', '23', '0', '', '2014-08-06 16:42:51');
INSERT INTO `wx_member_info_cog` VALUES ('14', '9', '28', '5', '2', '0', '每日签到赠积分', '2014-08-18 11:48:38');
INSERT INTO `wx_member_info_cog` VALUES ('15', '15', '28', '5', '2', '0', '每日签到赠积分', '2014-08-18 12:14:03');
INSERT INTO `wx_member_info_cog` VALUES ('16', '16', '28', '5', '2', '0', '每日签到赠积分', '2014-08-18 12:26:50');
INSERT INTO `wx_member_info_cog` VALUES ('17', '14', '28', '6', '2', '0', '完善资料赠送', '2014-08-20 15:26:54');
INSERT INTO `wx_member_info_cog` VALUES ('18', '14', '28', '5', '2', '0', '每日签到赠积分', '2014-08-20 15:29:10');
INSERT INTO `wx_member_info_cog` VALUES ('19', '15', '28', '3', '5', '0', '', '2015-01-26 15:45:18');
INSERT INTO `wx_member_info_cog` VALUES ('20', '15', '28', '3', '5', '0', '', '2015-01-26 15:45:36');
INSERT INTO `wx_member_info_cog` VALUES ('21', '15', '28', '1', '1', '0', '', '2015-01-26 15:45:45');
INSERT INTO `wx_member_info_cog` VALUES ('22', '15', '28', '3', '1', '0', '', '2015-01-26 15:45:53');
INSERT INTO `wx_member_info_cog` VALUES ('23', '15', '28', '4', '5', '0', '', '2015-01-26 15:46:03');
INSERT INTO `wx_member_info_cog` VALUES ('24', '17', '28', '3', '5', '0', '', '2015-01-26 15:46:08');
INSERT INTO `wx_member_info_cog` VALUES ('25', '15', '28', '2', '2', '0', '', '2015-01-26 15:47:01');
INSERT INTO `wx_member_info_cog` VALUES ('26', '15', '28', '6', '1', '0', '余额消费2元,赠送1积分', '2015-01-26 15:47:01');
INSERT INTO `wx_member_info_cog` VALUES ('27', '15', '28', '1', '2', '0', '', '2015-01-26 15:55:15');

-- ----------------------------
-- Table structure for `wx_menus`
-- ----------------------------
DROP TABLE IF EXISTS `wx_menus`;
CREATE TABLE `wx_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `appkey` varchar(50) DEFAULT NULL,
  `appsecret` varchar(50) DEFAULT NULL,
  `menus` text,
  `updatetime` datetime DEFAULT NULL,
  `isopen` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_menus
-- ----------------------------
INSERT INTO `wx_menus` VALUES ('60', '13', '1389343059045', null, null, '[{\"name\":\"121221\",\"type\":\"menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\",\"sub_menu\":[]}]', '2014-01-10 22:41:31', '0');
INSERT INTO `wx_menus` VALUES ('62', '14', '1389346372328', null, null, '[{\"name\":\"ASD\",\"type\":\"menu\",\"data_type\":\"text\",\"data_value\":\"ASD\",\"data_value_id\":\"\",\"sub_menu\":[{\"name\":\"212\",\"type\":\"sub_menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\"}]},{\"name\":\"21212121\",\"type\":\"menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\",\"sub_menu\":[]}]', '2014-01-10 22:42:34', '0');
INSERT INTO `wx_menus` VALUES ('64', '14', '1389364963417', null, null, '[{\"name\":\"212121\",\"type\":\"menu\",\"data_type\":\"text\",\"data_value\":\"ZXDFGHJG\",\"data_value_id\":\"\",\"sub_menu\":[]}]', '2014-01-10 22:43:55', '0');
INSERT INTO `wx_menus` VALUES ('69', '13', '1392132178754', null, null, '[{\"name\":\"23123\",\"type\":\"menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\",\"sub_menu\":[{\"name\":\"23123\",\"type\":\"sub_menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\"}]},{\"name\":\"2312321\",\"type\":\"menu\",\"data_type\":\"\",\"data_value\":\"\",\"data_value_id\":\"\",\"sub_menu\":[]}]', '2014-02-26 16:52:48', '0');
INSERT INTO `wx_menus` VALUES ('130', '13', '1389343041371', null, null, '[{\"name\":\"关于花儿\",\"type\":\"menu\",\"data_type\":\"url\",\"data_value\":\"http://www.weijuju.com/static/wsite/article.jsp?sid=6&resid=306&talker=ozdP9jg2vWAoe93KCGSl4PrPsO2M#mp.weixin.qq.com\",\"data_value_id\":\"\",\"sub_menu\":[{\"name\":\"关键词\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"官网\",\"data_value_id\":\"\"},{\"name\":\"关键词1\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"21\",\"data_value_id\":\"\"}]},{\"name\":\"花儿作品\",\"type\":\"menu\",\"data_type\":\"text\",\"data_value\":\"123\",\"data_value_id\":\"\",\"sub_menu\":[{\"name\":\"官网\",\"type\":\"sub_menu\",\"data_type\":\"url\",\"data_value\":\"www.126.com\",\"data_value_id\":\"\"}]}]', '2014-02-27 14:44:02', '0');
INSERT INTO `wx_menus` VALUES ('142', '2', '1393436574758', null, null, '[{\"name\":\"虹辰\",\"type\":\"menu\",\"data_type\":\"text\",\"data_value\":\"12\",\"data_value_id\":\"\",\"sub_menu\":[{\"name\":\"123\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"12\",\"data_value_id\":\"\"},{\"name\":\"12\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"23\",\"data_value_id\":\"\"},{\"name\":\"123\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"34\",\"data_value_id\":\"\"},{\"name\":\"1234\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"35\",\"data_value_id\":\"\"},{\"name\":\"1235\",\"type\":\"sub_menu\",\"data_type\":\"text\",\"data_value\":\"36\",\"data_value_id\":\"\"}]},{\"name\":\"阿狗\",\"type\":\"menu\",\"data_type\":\"url\",\"data_value\":\"www.baidu.com\",\"data_value_id\":\"\",\"sub_menu\":[]},{\"name\":\"官网\",\"type\":\"menu\",\"data_type\":\"text\",\"data_value\":\"微官网\",\"data_value_id\":\"\",\"sub_menu\":[]}]', '2014-02-27 15:59:47', '0');
INSERT INTO `wx_menus` VALUES ('154', '2', '1394033989490', null, null, '[{\"name\":\"测试\",\"type\":\"menu\",\"data_type\":\"url\",\"data_value\":\"http://www.baidu.com\",\"data_value_id\":\"\",\"data_value_display\":\"\",\"sub_menu\":[]}]', '2015-01-22 15:15:26', '0');

-- ----------------------------
-- Table structure for `wx_message`
-- ----------------------------
DROP TABLE IF EXISTS `wx_message`;
CREATE TABLE `wx_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(20) DEFAULT NULL,
  `sender` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `text` text,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_message
-- ----------------------------
INSERT INTO `wx_message` VALUES ('24', '2', '123', ' ', '2014-03-06 00:21:15', '44', null);
INSERT INTO `wx_message` VALUES ('25', '2', '66', ' ', '2014-03-06 00:21:29', '77', null);
INSERT INTO `wx_message` VALUES ('26', '2', '66', ' ', '2014-03-06 00:21:40', '77', 'na');
INSERT INTO `wx_message` VALUES ('27', '2', '刘7', ' ', '2014-03-09 20:29:23', '我想吃饭', '我请你');
INSERT INTO `wx_message` VALUES ('29', '2', 'XX', '', '2014-03-17 13:37:58', 'BB', null);
INSERT INTO `wx_message` VALUES ('30', '2', '111', '222', '2014-03-17 13:42:58', '333', '12312321');
INSERT INTO `wx_message` VALUES ('31', '2', '刘', '18645071576', '2014-03-17 13:43:16', '123', null);
INSERT INTO `wx_message` VALUES ('32', '2', '1', '', '2014-03-17 13:51:29', '12', null);
INSERT INTO `wx_message` VALUES ('35', '2', '老高', '靠', '2014-03-17 21:14:55', 'j h', 'kkk');

-- ----------------------------
-- Table structure for `wx_message_basic`
-- ----------------------------
DROP TABLE IF EXISTS `wx_message_basic`;
CREATE TABLE `wx_message_basic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `descs` text,
  `img` varchar(100) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_message_basic
-- ----------------------------
INSERT INTO `wx_message_basic` VALUES ('2', '1394033989490', '2', '微留言', '微留言', '请为留言填写描述', '/YiWX/weixin/message/images/cover.jpg', '2014-03-17 21:12:42');

-- ----------------------------
-- Table structure for `wx_order`
-- ----------------------------
DROP TABLE IF EXISTS `wx_order`;
CREATE TABLE `wx_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `app_id` bigint(20) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `title` text,
  `place` text,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `descs` varchar(400) DEFAULT NULL,
  `conditions` text,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_order
-- ----------------------------
INSERT INTO `wx_order` VALUES ('20', '25', '1394452528697', '微预约', '在线预约', '北京市海淀区肖家河桥', '116.299634', '40.016465', '010-88888888', '/YiWX/weixin/order/image/yy_pic.jpg', 'XXXHHHH', '[{\"type\":\"text\",\"name\":\"联系人\",\"holder\":\"请输入您的名字\",\"issys\":\"0\"},{\"type\":\"text\",\"name\":\"联系电话\",\"holder\":\"请输入您的电话\",\"issys\":\"0\"},{\"type\":\"datetime\",\"name\":\"预约日期\",\"holder\":\"请选择预约日期\",\"issys\":\"0\"},{\"type\":\"textarea\",\"name\":\"备注\",\"holder\":\"如有特殊需求请留言\",\"issys\":\"0\"},{\"type\":\"select\",\"name\":\"科室\",\"holder\":\"耳鼻喉科|内科\",\"issys\":\"0\"}]', '2014-03-10 20:18:56', '2014-03-10 20:24:38', '周一休息周三');
INSERT INTO `wx_order` VALUES ('21', '2', '1394033989490', '微预约', '在线预约', '北京市朝阳区天辰东路9', '116.396795', '40.000991', '123', 'http://ggbxnpiuy0o1j5g/YiWX/weixin/order/image/yy_pic.jpg', '请点击进入在线预约页面!', '[{\"type\":\"text\",\"name\":\"联系人\",\"holder\":\"请输入您的名字\",\"issys\":\"0\"}]', '2014-03-11 14:57:28', '2014-03-17 21:11:42', '对在线预约活动的说明,建议按照自己活动的应用场景自行填写，长度在200字以内。可以适用在线挂号,申请试驾,KTV订房,餐厅订桌,酒店订房,上门报修等等。');

-- ----------------------------
-- Table structure for `wx_order_details`
-- ----------------------------
DROP TABLE IF EXISTS `wx_order_details`;
CREATE TABLE `wx_order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `oid` bigint(20) DEFAULT NULL,
  `wid` varchar(128) DEFAULT NULL,
  `orderdetail` text,
  `ordertime` datetime DEFAULT NULL,
  `orderstatus` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_order_details
-- ----------------------------
INSERT INTO `wx_order_details` VALUES ('1', '1394033989490', '21', '0', '[{\"name\":\"联系人\",\"value\":\"刘\"}]', '2014-03-11 14:58:56', '1');
INSERT INTO `wx_order_details` VALUES ('2', '1394033989490', '21', '0', '[{\"name\":\"联系人\",\"value\":\"555\"}]', '2014-03-11 15:13:36', '2');
INSERT INTO `wx_order_details` VALUES ('4', '1394033989490', '21', '2', '[{\"name\":\"联系人\",\"value\":\"王博\"}]', '2014-03-17 21:12:14', '1');

-- ----------------------------
-- Table structure for `wx_photo`
-- ----------------------------
DROP TABLE IF EXISTS `wx_photo`;
CREATE TABLE `wx_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(20) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `descs` text,
  `url` text,
  `time` datetime DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_photo
-- ----------------------------
INSERT INTO `wx_photo` VALUES ('17', '3', '1394033989490', '2', '微相册', null, '[\"/YiWX/attached/image/2/20140804205010_994.jpg\",\"/YiWX/attached/image/2/20140804205010_859.jpg\",\"/YiWX/attached/image/2/20140804205010_707.jpg\",\"/YiWX/attached/image/2/20140804205011_979.jpg\",\"/YiWX/attached/image/2/20140804205011_254.jpg\",\"/YiWX/attached/image/2/20140804205011_868.jpg\",\"/YiWX/attached/image/2/20140804205011_810.jpg\",\"/YiWX/attached/image/2/20140804205011_618.jpg\",\"/YiWX/attached/image/2/20140804205011_371.jpg\"]', '2014-08-04 20:50:14', '/YiWX/weixin/photo/image/cover.jpg');

-- ----------------------------
-- Table structure for `wx_photo_basic`
-- ----------------------------
DROP TABLE IF EXISTS `wx_photo_basic`;
CREATE TABLE `wx_photo_basic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `descs` text,
  `img` varchar(100) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_photo_basic
-- ----------------------------
INSERT INTO `wx_photo_basic` VALUES ('3', '1394033989490', '2', '微相册', '微相册', '点击访问我的微相册', '/YiWX/weixin/photo/image/cover.jpg', '2014-08-04 20:42:55');

-- ----------------------------
-- Table structure for `wx_quanjing`
-- ----------------------------
DROP TABLE IF EXISTS `wx_quanjing`;
CREATE TABLE `wx_quanjing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `url1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url4` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url5` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url6` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `text` text,
  `keywords` varchar(30) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_quanjing
-- ----------------------------
INSERT INTO `wx_quanjing` VALUES ('5', '1393405754159', '幸运刮刮卡', '/YiWX/attached/image/20140305/20140305130547_457.jpg', '/YiWX/attached/image/20140304/20140304193550_195.jpg', '/YiWX/attached/image/20140304/20140304193603_582.jpg', '/YiWX/attached/image/20140304/20140304193617_11.jpg', '/YiWX/attached/image/20140304/20140304193629_850.jpg', '/YiWX/attached/image/20140304/20140304193639_212.jpg', '2014-03-05 13:05:51', null, '微全景', null, null);
INSERT INTO `wx_quanjing` VALUES ('6', '1393405754159', '360全景1', '/YiWX/attached/image/20140305/20140305141341_20.jpg', '/YiWX/attached/image/20140305/20140305141711_798.jpg', '/YiWX/img/service/guaguaka01.jpg', '/YiWX/img/service/guaguaka01.jpg', '/YiWX/img/service/guaguaka01.jpg', '/YiWX/img/service/guaguaka01.jpg', '2014-03-05 14:17:30', '微全景1微全景1微', '微全景1', '13', '/YiWX/attached/image/20140305/20140305141728_381.jpg');
INSERT INTO `wx_quanjing` VALUES ('7', '1393405754159', '360全景OK', '/YiWX/weixin/360/images/negx.jpg', '/YiWX/weixin/360/images/posx.jpg', '/YiWX/attached/image/20140305/20140305002904_432.jpg', '/YiWX/attached/image/20140301/20140301040831_426.jpg', '/YiWX/weixin/360/images/posy.jpg', '/YiWX/weixin/360/images/negy.jpg', '2014-03-05 15:36:33', 'OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK', '微全景OK', '13', '/YiWX/weixin/photo/image/cover.jpg');
INSERT INTO `wx_quanjing` VALUES ('8', '1393494974816', '360全景', '/YiWX/weixin/360/images/negx.jpg', '/YiWX/weixin/360/images/posx.jpg', '/YiWX/weixin/360/images/negz.jpg', 'http://tp3.sinaimg.cn/1874366402/50/5657016546/0', '/YiWX/weixin/360/images/posy.jpg', '/YiWX/weixin/360/images/negy.jpg', '2014-03-05 18:47:43', '请为全景填写描述', '微全景', '2', '/YiWX/weixin/photo/image/cover.jpg');
INSERT INTO `wx_quanjing` VALUES ('11', '1394452528697', '360全景', '/YiWX/weixin/360/images/negx.jpg', '/YiWX/weixin/360/images/posx.jpg', '/YiWX/weixin/360/images/negz.jpg', '/YiWX/weixin/360/images/posz.jpg', '/YiWX/weixin/360/images/posy.jpg', '/YiWX/weixin/360/images/negy.jpg', '2014-03-10 20:13:55', '请为全景填写描述', '微全景', '25', '/YiWX/weixin/photo/image/cover.jpg');
INSERT INTO `wx_quanjing` VALUES ('13', '1394033989490', '360全景33', '/YiWX/weixin/360/images/negx.jpg', '/YiWX/weixin/360/images/posx.jpg', '/YiWX/weixin/360/images/negz.jpg', '/YiWX/weixin/360/images/posz.jpg', '/YiWX/weixin/360/images/posy.jpg', '/YiWX/weixin/360/images/negy.jpg', '2014-03-17 21:06:22', '请为全景填写描述44', '微全景22', '2', '/YiWX/weixin/photo/image/cover.jpg');

-- ----------------------------
-- Table structure for `wx_research_a`
-- ----------------------------
DROP TABLE IF EXISTS `wx_research_a`;
CREATE TABLE `wx_research_a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `serviceid` bigint(20) DEFAULT NULL,
  `answer_desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_research_a
-- ----------------------------
INSERT INTO `wx_research_a` VALUES ('23', '49', '4', 'qwewqewq');
INSERT INTO `wx_research_a` VALUES ('24', '50', '4', '阿斯顿发放大');
INSERT INTO `wx_research_a` VALUES ('25', '51', '4', 'dasdasd');
INSERT INTO `wx_research_a` VALUES ('26', '52', '4', 'asdasd');
INSERT INTO `wx_research_a` VALUES ('27', '53', '4', '321123');
INSERT INTO `wx_research_a` VALUES ('28', '55', '4', 'asdf');
INSERT INTO `wx_research_a` VALUES ('29', '58', '17', '个HAHH');

-- ----------------------------
-- Table structure for `wx_research_basic`
-- ----------------------------
DROP TABLE IF EXISTS `wx_research_basic`;
CREATE TABLE `wx_research_basic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `descs` text,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_research_basic
-- ----------------------------
INSERT INTO `wx_research_basic` VALUES ('4', '1394034978392', '13', 'rwerwer', '微留言', '~~~~', '2014-10-12 18:55:34', '2014-10-14 10:45:34', null, null);
INSERT INTO `wx_research_basic` VALUES ('5', '1394034978392', '13', '微调研111', '微留言111', '~~~~', '2014-03-20 16:52:43', '2014-03-23 09:22:14', null, null);
INSERT INTO `wx_research_basic` VALUES ('6', '1394034978392', '13', 'ghgf', '微调研', '~~~~', '2014-03-23 09:55:27', '2014-03-25 10:04:25', null, null);
INSERT INTO `wx_research_basic` VALUES ('7', '1394034978392', '13', '微调研', '微调研', '~~~~', '2014-03-25 10:06:27', '2014-06-23 10:06:27', null, null);
INSERT INTO `wx_research_basic` VALUES ('8', '1394034978392', '13', '微调研asd', '微调研asd', '请为调研填写描述asd', '2014-03-25 11:03:32', '2014-06-23 11:03:32', '/YiWX/attached/image/13/20140325110345_21.jpg', '2014-03-25 11:03:46');
INSERT INTO `wx_research_basic` VALUES ('9', '1394034978392', '13', '微调研vvvvv', '微调研vvvvv', '请为调研填写描述vvvvv', '2014-03-25 11:23:40', '2014-04-01 11:23:40', '/YiWX/attached/image/13/20140325112349_242.jpg', '2014-03-25 11:23:51');
INSERT INTO `wx_research_basic` VALUES ('10', '1394034978392', '13', '微调研ggggg', '微调研gggg', '请为调研填写描述ggggg', '2014-03-25 11:29:03', '2014-04-01 11:29:03', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-25 11:29:06');
INSERT INTO `wx_research_basic` VALUES ('11', '1394034978392', '13', '微调研mmmm', '微调研mmmm', '请为调研填写描述mmmm', '2014-03-29 11:30:11', '2014-06-23 11:31:11', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-25 11:31:26');
INSERT INTO `wx_research_basic` VALUES ('12', '1395656550396', '27', '微调研', '微调研', '请为调研填写描述', '2014-03-27 16:50:01', '2014-06-23 16:53:01', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-25 16:53:17');
INSERT INTO `wx_research_basic` VALUES ('13', '1395656550396', '27', '微调研', '微调研', '请为调研填写描述', '2014-03-25 17:16:11', '2014-06-23 17:16:11', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-25 17:16:22');
INSERT INTO `wx_research_basic` VALUES ('14', '1395656550396', '27', '微调研asd', '微调研asd', '请为调研填写描述asd', '2014-03-27 11:00:24', '2014-06-24 11:03:24', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-26 11:03:37');
INSERT INTO `wx_research_basic` VALUES ('15', '1395656550396', '27', '微调研ccccc', '微调研cccc', '请为调研填写描述ccccc', '2014-03-26 11:13:43', '2014-06-24 11:13:43', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-26 11:13:51');
INSERT INTO `wx_research_basic` VALUES ('16', '1395656550396', '27', '微调研nnnn', '微调研nnnn', '请为调研填写描述nnn', '2014-03-28 14:25:10', '2014-06-25 14:26:10', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-27 14:26:22');
INSERT INTO `wx_research_basic` VALUES ('17', '1394033989490', '2', '微调研', '微调研', '请为调研填写描述', '2014-03-31 14:05:32', '2014-03-31 14:15:34', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:05:34');
INSERT INTO `wx_research_basic` VALUES ('18', '1394033989490', '2', '微调研', '微调研', '请为调研填写描述', '2014-03-31 14:13:20', '2014-03-31 18:22:19', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:13:23');
INSERT INTO `wx_research_basic` VALUES ('19', '1394033989490', '2', '微调研', '微调研', '请为调研填写描述123', '2014-03-31 14:18:29', '2014-06-29 14:18:29', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:18:32');
INSERT INTO `wx_research_basic` VALUES ('20', '1394033989490', '2', '微调研', '微调研', '请为调研填写描述', '2014-03-31 14:40:46', '2014-06-29 14:40:46', '/YiWX/weixin/photo/image/cover.jpg', '2014-03-31 14:40:47');

-- ----------------------------
-- Table structure for `wx_research_p`
-- ----------------------------
DROP TABLE IF EXISTS `wx_research_p`;
CREATE TABLE `wx_research_p` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `answerid` bigint(20) DEFAULT NULL,
  `answer_a` varchar(50) DEFAULT NULL,
  `answer_b` varchar(50) DEFAULT NULL,
  `answer_c` varchar(50) DEFAULT NULL,
  `answer_d` varchar(50) DEFAULT NULL,
  `answer_e` varchar(50) DEFAULT NULL,
  `answer_f` varchar(50) DEFAULT NULL,
  `answer_g` varchar(50) DEFAULT NULL,
  `answer_h` varchar(50) DEFAULT NULL,
  `answer_i` varchar(50) DEFAULT NULL,
  `answer_j` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_research_p
-- ----------------------------
INSERT INTO `wx_research_p` VALUES ('51', '52', '39', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('52', '52', '43', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('53', '53', '39', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('54', '53', '43', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('55', '54', '39', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('56', '54', '43', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('57', '55', '39', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('58', '55', '43', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('59', '57', '47', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `wx_research_p` VALUES ('60', '58', '57', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wx_research_q`
-- ----------------------------
DROP TABLE IF EXISTS `wx_research_q`;
CREATE TABLE `wx_research_q` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `BASICID` bigint(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `ANSWER_A` varchar(50) DEFAULT NULL,
  `ANSWER_B` varchar(50) DEFAULT NULL,
  `ANSWER_C` varchar(50) DEFAULT NULL,
  `ANSWER_D` varchar(50) DEFAULT NULL,
  `ANSWER_E` varchar(50) DEFAULT NULL,
  `ANSWER_F` varchar(50) DEFAULT NULL,
  `ANSWER_G` varchar(50) DEFAULT NULL,
  `ANSWER_H` varchar(50) DEFAULT NULL,
  `ANSWER_I` varchar(50) DEFAULT NULL,
  `ANSWER_J` varchar(50) DEFAULT NULL,
  `ANSWERS` bigint(10) DEFAULT NULL,
  `SERVICEID` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_research_q
-- ----------------------------
INSERT INTO `wx_research_q` VALUES ('39', '1394034978392', '4', 'weqwqe', 'weweq', 'qww', '', '', '', '', '', '', '', '', '1', '4');
INSERT INTO `wx_research_q` VALUES ('43', '1394034978392', '4', 'sfdsf', 'sdfdsf', 'sdfsd', '', '', '', '', '', '', '', '', '1', '4');
INSERT INTO `wx_research_q` VALUES ('44', '1394034978392', '7', 'qweqweqw', 'qweqwe', 'qweqwe', 'qweqw', '111111111', '', '', '', '', '', '', '1', '7');
INSERT INTO `wx_research_q` VALUES ('45', '1394034978392', '7', '435345435', 'ewrwer', 'werew', '', '', '', '', '', '', '', '', '1', '7');
INSERT INTO `wx_research_q` VALUES ('46', '1394034978392', '7', '32432432324', '234234', '234234', '234234', '', '', '', '', '', '', '', '1', '7');
INSERT INTO `wx_research_q` VALUES ('47', '1395656550396', '12', '234', '234', '234', '234', '', '', '', '', '', '', '', '1', '12');
INSERT INTO `wx_research_q` VALUES ('48', '1395656550396', '12', '123123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '321', '8', '12');
INSERT INTO `wx_research_q` VALUES ('55', '1395656550396', '15', 'asdf', 'asdf', 'asdf', '', '', '', '', '', '', '', '', '1', '15');
INSERT INTO `wx_research_q` VALUES ('56', '1395656550396', '15', 'sd', 'dd', '33', '12', '21', '', '', '', '', '', '', '2', '15');
INSERT INTO `wx_research_q` VALUES ('57', '1394033989490', '17', '测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1', '选项A', '选项B', '选项C', '', '', '', '', '', '', '', '2', '17');
INSERT INTO `wx_research_q` VALUES ('58', '1394033989490', '18', 'AA', 'BB', 'BB', '', '', '', '', '', '', '', '', '1', '18');
INSERT INTO `wx_research_q` VALUES ('59', '1394033989490', '20', '1', '2', '3', '', '', '', '', '', '', '', '', '1', '20');

-- ----------------------------
-- Table structure for `wx_research_u`
-- ----------------------------
DROP TABLE IF EXISTS `wx_research_u`;
CREATE TABLE `wx_research_u` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `serviceid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_research_u
-- ----------------------------
INSERT INTO `wx_research_u` VALUES ('52', '123123', 'qweqwe', '123123123123', '4');
INSERT INTO `wx_research_u` VALUES ('53', '321321', '321123123', '123123123123', '4');
INSERT INTO `wx_research_u` VALUES ('54', 'asdf', '123', '123321123', '4');
INSERT INTO `wx_research_u` VALUES ('55', 'fds', 'sdffdas', '123123123123', '4');
INSERT INTO `wx_research_u` VALUES ('56', 'ggg', 'adffds', '123123123123', '4');
INSERT INTO `wx_research_u` VALUES ('57', 'asdffdsa', 'wangbo', '18500123', '12');
INSERT INTO `wx_research_u` VALUES ('58', 'asdffdsa', 'hah ', '18612345678', '17');
INSERT INTO `wx_research_u` VALUES ('59', 'asdffdsa', '刘虹辰', '18645071576', '18');
INSERT INTO `wx_research_u` VALUES ('60', 'asdffdsa', '刘虹辰', '18645071576', '18');
INSERT INTO `wx_research_u` VALUES ('61', 'asdffdsa', '15616', '18645071576', '20');

-- ----------------------------
-- Table structure for `wx_useractions`
-- ----------------------------
DROP TABLE IF EXISTS `wx_useractions`;
CREATE TABLE `wx_useractions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `wid` varchar(128) DEFAULT NULL,
  `event` varchar(20) DEFAULT NULL,
  `action` varchar(256) DEFAULT NULL,
  `isreply` int(10) DEFAULT NULL,
  `actiontime` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appid_index` (`appid`) USING BTREE,
  KEY `event_index` (`event`) USING BTREE,
  KEY `wid_index` (`wid`) USING BTREE,
  KEY `actiontime_index` (`actiontime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_useractions
-- ----------------------------
INSERT INTO `wx_useractions` VALUES ('331', '1394033989490', 'oTTrWjitlDxios_4px9lNAHaYfUQ', 'unsubscribe', null, '0', '2014-03-31 20:04:24', '0');
INSERT INTO `wx_useractions` VALUES ('332', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'hhg', '0', '2014-03-31 20:04:38', '0');
INSERT INTO `wx_useractions` VALUES ('333', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'g', '0', '2014-03-31 20:11:09', '0');
INSERT INTO `wx_useractions` VALUES ('334', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'g', '0', '2014-03-31 20:11:17', '0');
INSERT INTO `wx_useractions` VALUES ('335', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'g', '0', '2014-03-31 20:11:31', '0');
INSERT INTO `wx_useractions` VALUES ('336', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'g', '0', '2014-03-31 20:11:44', '0');
INSERT INTO `wx_useractions` VALUES ('337', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'hh', '0', '2014-03-31 20:11:58', '0');
INSERT INTO `wx_useractions` VALUES ('338', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'tgt', '0', '2014-03-31 20:12:16', '0');
INSERT INTO `wx_useractions` VALUES ('340', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', '/:B-)', '0', '2014-03-31 20:28:45', '0');
INSERT INTO `wx_useractions` VALUES ('348', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'image', 'http://mmbiz.qpic.cn/mmbiz/zRVglX6sbxGQNgwVl8UibiaogtYwV3hnTOeNDLMAITs3c5KcLWLccsqZI2Ggo0ONx6iajibQmc9r3VV1mibKAr8rZnw/0', '0', '2014-03-31 20:30:21', '0');
INSERT INTO `wx_useractions` VALUES ('349', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'image', 'http://mmbiz.qpic.cn/mmbiz/zRVglX6sbxGQNgwVl8UibiaogtYwV3hnTOeNDLMAITs3c5KcLWLccsqZI2Ggo0ONx6iajibQmc9r3VV1mibKAr8rZnw/0', '0', '2014-03-31 20:30:32', '0');
INSERT INTO `wx_useractions` VALUES ('350', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', ' sd', '1', '2014-03-31 21:02:47', '0');
INSERT INTO `wx_useractions` VALUES ('351', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'gg', '1', '2014-03-31 21:03:20', '0');
INSERT INTO `wx_useractions` VALUES ('352', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', '；发', '1', '2014-03-31 21:04:52', '0');
INSERT INTO `wx_useractions` VALUES ('353', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'AA', '0', '2014-03-31 21:04:52', '1');
INSERT INTO `wx_useractions` VALUES ('354', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', '微官网', '1', '2014-03-31 21:05:38', '0');
INSERT INTO `wx_useractions` VALUES ('355', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'AA', '0', '2014-03-31 21:05:38', '1');
INSERT INTO `wx_useractions` VALUES ('356', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', 'AA', '1', '2014-03-31 21:06:00', '0');
INSERT INTO `wx_useractions` VALUES ('357', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'KEYWORD', '已回复微官网', '0', '2014-03-31 21:06:00', '1');
INSERT INTO `wx_useractions` VALUES ('358', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'LOCATION', '中国北京市海淀区大钟寺东路2号 邮政编码: 100086', '1', '2014-03-31 21:06:30', '0');
INSERT INTO `wx_useractions` VALUES ('359', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'LOCATION', '已回复LBS位置', '0', '2014-03-31 21:06:30', '1');
INSERT INTO `wx_useractions` VALUES ('360', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'unsubscribe', null, '0', '2014-03-31 21:12:13', '0');
INSERT INTO `wx_useractions` VALUES ('361', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'subscribe', null, '1', '2014-03-31 21:12:33', '0');
INSERT INTO `wx_useractions` VALUES ('362', '1394033989490', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', 'subscribe', '各位。。MT微信公众平台升级中。。开发哥哥正在做功能开发与测试', '0', '2014-03-31 21:12:33', '1');
INSERT INTO `wx_useractions` VALUES ('363', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', 'Assess', '1', '2014-04-04 16:41:51', '0');
INSERT INTO `wx_useractions` VALUES ('364', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '[草泥马][给力][囧]', '0', '2014-04-04 16:41:51', '1');
INSERT INTO `wx_useractions` VALUES ('365', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '测试', '0', '2014-04-04 16:41:51', '0');
INSERT INTO `wx_useractions` VALUES ('366', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', ' ww', '1', '2014-06-23 14:33:13', '0');
INSERT INTO `wx_useractions` VALUES ('367', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '测试', '1', '2014-06-23 14:36:14', '0');
INSERT INTO `wx_useractions` VALUES ('368', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '图文', '1', '2014-06-23 14:37:16', '0');
INSERT INTO `wx_useractions` VALUES ('369', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', 'er', '1', '2014-06-23 14:47:17', '0');
INSERT INTO `wx_useractions` VALUES ('370', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '图文', '1', '2014-06-23 14:47:26', '0');
INSERT INTO `wx_useractions` VALUES ('371', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'KEYWORD', '那就', '1', '2014-06-23 14:49:05', '0');
INSERT INTO `wx_useractions` VALUES ('372', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'LOCATION', '', '1', '2014-06-23 14:49:24', '0');
INSERT INTO `wx_useractions` VALUES ('373', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'LOCATION', '北京市海淀区知春路56号', '1', '2014-06-23 14:50:57', '0');
INSERT INTO `wx_useractions` VALUES ('374', '1394033989490', 'oTTrWjn94mUhfo3w8MikcJg37XvM', 'LOCATION', '海淀区知春路36号', '1', '2014-06-23 14:51:17', '0');
INSERT INTO `wx_useractions` VALUES ('375', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'LOCATION', '', '1', '2014-07-18 13:22:18', '0');
INSERT INTO `wx_useractions` VALUES ('376', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-18 13:40:24', '0');
INSERT INTO `wx_useractions` VALUES ('377', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'subscribe', null, '1', '2014-07-18 13:40:56', '0');
INSERT INTO `wx_useractions` VALUES ('378', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-18 13:41:39', '0');
INSERT INTO `wx_useractions` VALUES ('379', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-18 13:41:51', '0');
INSERT INTO `wx_useractions` VALUES ('380', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'subscribe', null, '1', '2014-07-18 13:41:54', '0');
INSERT INTO `wx_useractions` VALUES ('381', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-18 13:43:08', '0');
INSERT INTO `wx_useractions` VALUES ('382', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'subscribe', null, '1', '2014-07-18 13:43:26', '0');
INSERT INTO `wx_useractions` VALUES ('383', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 11:42:59', '0');
INSERT INTO `wx_useractions` VALUES ('384', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'subscribe', null, '1', '2014-07-21 11:43:18', '0');
INSERT INTO `wx_useractions` VALUES ('385', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'CLICK', '会员卡', '1', '2014-07-21 11:43:46', '0');
INSERT INTO `wx_useractions` VALUES ('386', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:40:28', '0');
INSERT INTO `wx_useractions` VALUES ('387', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:40:29', '0');
INSERT INTO `wx_useractions` VALUES ('388', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:40:30', '0');
INSERT INTO `wx_useractions` VALUES ('389', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:51:13', '0');
INSERT INTO `wx_useractions` VALUES ('390', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:53:09', '0');
INSERT INTO `wx_useractions` VALUES ('391', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:53:23', '0');
INSERT INTO `wx_useractions` VALUES ('392', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:56:08', '0');
INSERT INTO `wx_useractions` VALUES ('393', '1394033989490', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', 'unsubscribe', null, '0', '2014-07-21 16:56:16', '0');

-- ----------------------------
-- Table structure for `wx_users`
-- ----------------------------
DROP TABLE IF EXISTS `wx_users`;
CREATE TABLE `wx_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` datetime NOT NULL,
  `lasttime` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `money` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '0',
  `contact` varchar(30) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='前台用户表';

-- ----------------------------
-- Records of wx_users
-- ----------------------------
INSERT INTO `wx_users` VALUES ('2', '1', '1', '12', '2013-11-26 20:05:43', '2013-11-26 20:05:43', '1', '127.0.0.1', '127.0.0.1', '0', '15010594110', null, null);
INSERT INTO `wx_users` VALUES ('25', '18645071576', '666666', '', '2014-03-10 19:55:19', '2014-03-10 19:55:19', '1', '127.0.0.1', '127.0.0.1', '0', '18645071576', '', '');

-- ----------------------------
-- Table structure for `wx_websites`
-- ----------------------------
DROP TABLE IF EXISTS `wx_websites`;
CREATE TABLE `wx_websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `appkey` varchar(25) DEFAULT NULL,
  `appsecret` varchar(25) DEFAULT NULL,
  `datas` text,
  `updatetime` datetime DEFAULT NULL,
  `isopen` int(1) DEFAULT NULL,
  `refkid` bigint(20) DEFAULT NULL,
  `keyword` text,
  `img` text,
  `descs` text,
  `title` text,
  `tempnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_websites
-- ----------------------------
INSERT INTO `wx_websites` VALUES ('4', '2', '1394033989490', null, null, '{\"bgimg\":\"/YiWX/weixin/gw/img/bg/3.jpg\",\"bgani\":\"/YiWXnull\",\"keyword\":\"AA\",\"title\":\"BB\",\"img\":\"/YiWX/weixin/gw/img/gw.jpg\",\"descs\":\"CC\",\"phoneNumber\":\"010-88888888\",\"phoneVisiable\":\"是\",\"navVisiable\":\"是\",\"thumbVisiable\":\"是\",\"tempnum\":\"16\",\"thumbs\":[{\"img\":\"http://f.hiphotos.bdimg.com/album/w%3D2048/sign=e67603df5bafa40f3cc6c9dd9f5c014f/a08b87d6277f9e2f928ea9e51e30e924b999f3a0.jpg\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"img\":\"http://d.hiphotos.bdimg.com/album/w%3D2048/sign=15add1490b7b02080cc938e156e1f0d3/bf096b63f6246b6077984b98eaf81a4c500fa24c.jpg\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"}],\"mains\":[{\"title\":\"标题\",\"icon\":\"icon-smile main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"标题\",\"icon\":\"icon-smile main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"}],\"navs\":[]}', '2014-05-19 17:49:37', '0', null, null, null, null, null, '16');
INSERT INTO `wx_websites` VALUES ('5', '2', '1396249644140', null, null, '{\"refkid\":\"73\",\"bgimg\":\"null\",\"bgani\":\"null\",\"keyword\":\"微官网\",\"title\":\"微官网标题\",\"img\":\"/YiWX/weixin/gw/img/gw.jpg\",\"descs\":\"请点击进入微官网页面，祝您好运！\",\"phoneNumber\":\"010-88888888\",\"phoneVisiable\":\"是\",\"navVisiable\":\"是\",\"thumbVisiable\":\"是\",\"tempnum\":\"3\",\"thumbs\":[],\"mains\":[],\"navs\":[]}', '2014-03-31 15:15:52', '0', '74', null, null, null, null, '6');
INSERT INTO `wx_websites` VALUES ('6', '2', '1396258483230', null, null, '{\"bgimg\":\"/YiWX/weixin/gw/img/bg/3.jpg\",\"bgani\":\"/YiWXnull\",\"keyword\":\"微官网\",\"title\":\"微官网标题\",\"img\":\"/YiWX/weixin/gw/img/gw.jpg\",\"descs\":\"请点击进入微官网页面，祝您好运！\",\"phoneNumber\":\"010-88888888\",\"phoneVisiable\":\"是\",\"navVisiable\":\"是\",\"thumbVisiable\":\"是\",\"tempnum\":\"1\",\"thumbs\":[{\"img\":\"http://ww1.sinaimg.cn/bmiddle/828e19dcjw1eez2wbuboxj20m10a7jsn.jpg\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"img\":\"http://ww3.sinaimg.cn/bmiddle/828e19dcjw1eez2wdrzsdj20lx0a6gng.jpg\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"img\":\"http://ww3.sinaimg.cn/bmiddle/828e19dcjw1eez2wg28omj20lz0a5q4u.jpg\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"}],\"mains\":[{\"title\":\"最新产品\",\"icon\":\"icon-truck main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"业内动态\",\"icon\":\"icon-list-ul main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"公司新闻\",\"icon\":\"icon-microphone main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"实力展示\",\"icon\":\"icon-picture main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"关于我们\",\"icon\":\"icon-user main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"},{\"title\":\"会员尊享\",\"icon\":\"icon-credit-card main_icon\",\"event\":\"网址\",\"show\":\"是\",\"link\":\"\"}],\"navs\":[{\"title\":\"刮刮卡\",\"icon\":\"icon-dashboard  main_icon\",\"event\":\"网址\",\"show\":null,\"link\":\"\"},{\"title\":\"我的地址\",\"icon\":\"icon-map-marker main_icon\",\"event\":\"网址\",\"show\":null,\"link\":\"\"},{\"title\":\"会员卡\",\"icon\":\"icon-credit-card main_icon\",\"event\":\"网址\",\"show\":null,\"link\":\"\"}]}', '2014-03-31 17:54:19', '0', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `wx_website_template`
-- ----------------------------
DROP TABLE IF EXISTS `wx_website_template`;
CREATE TABLE `wx_website_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(200) DEFAULT NULL,
  `tempjsp` varchar(200) DEFAULT NULL,
  `tempnum` int(11) DEFAULT NULL,
  `tempimg` varchar(200) DEFAULT NULL,
  `temptypeid` varchar(50) DEFAULT NULL,
  `temptypename` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `status` binary(10) DEFAULT NULL,
  `tempasc` bigint(10) DEFAULT NULL COMMENT '相近的模板排列在一起',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_website_template
-- ----------------------------
INSERT INTO `wx_website_template` VALUES ('193', '模板1', 'tmp_index_1.jsp', '1', 'tmp_img_1.jpg', '1', '轮播图片', '2014-03-28 08:56:27', 0x31000000000000000000, '1');
INSERT INTO `wx_website_template` VALUES ('194', '模板2', 'tmp_index_2.jsp', '2', 'tmp_img_2.jpg', '1', '轮播图片', '2014-03-28 08:56:27', 0x30000000000000000000, '2');
INSERT INTO `wx_website_template` VALUES ('195', '模板3', 'tmp_index_3.jsp', '3', 'tmp_img_3.jpg', '1', '轮播图片', '2014-03-28 08:56:27', 0x31000000000000000000, '3');
INSERT INTO `wx_website_template` VALUES ('196', '模板4', 'tmp_index_4.jsp', '4', 'tmp_img_4.jpg', '1', '轮播图片', '2014-03-28 08:56:27', 0x31000000000000000000, '4');
INSERT INTO `wx_website_template` VALUES ('197', '模板5', 'tmp_index_5.jsp', '5', 'tmp_img_5.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '6');
INSERT INTO `wx_website_template` VALUES ('198', '模板6', 'tmp_index_6.jsp', '6', 'tmp_img_6.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '20');
INSERT INTO `wx_website_template` VALUES ('199', '模板7', 'tmp_index_7.jsp', '7', 'tmp_img_7.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '9');
INSERT INTO `wx_website_template` VALUES ('200', '模板8', 'tmp_index_8.jsp', '8', 'tmp_img_8.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '7');
INSERT INTO `wx_website_template` VALUES ('201', '模板9', 'tmp_index_9.jsp', '9', 'tmp_img_9.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '8');
INSERT INTO `wx_website_template` VALUES ('202', '模板10', 'tmp_index_10.jsp', '10', 'tmp_img_10.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '25');
INSERT INTO `wx_website_template` VALUES ('203', '模板11', 'tmp_index_11.jsp', '11', 'tmp_img_11.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '26');
INSERT INTO `wx_website_template` VALUES ('204', '模板12', 'tmp_index_12.jsp', '12', 'tmp_img_12.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '19');
INSERT INTO `wx_website_template` VALUES ('205', '模板13', 'tmp_index_13.jsp', '13', 'tmp_img_13.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '14');
INSERT INTO `wx_website_template` VALUES ('206', '模板14', 'tmp_index_14.jsp', '14', 'tmp_img_14.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '15');
INSERT INTO `wx_website_template` VALUES ('207', '模板15', 'tmp_index_15.jsp', '15', 'tmp_img_15.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '12');
INSERT INTO `wx_website_template` VALUES ('208', '模板16', 'tmp_index_16.jsp', '16', 'tmp_img_16.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '13');
INSERT INTO `wx_website_template` VALUES ('209', '模板17', 'tmp_index_17.jsp', '17', 'tmp_img_17.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '16');
INSERT INTO `wx_website_template` VALUES ('210', '模板18', 'tmp_index_18.jsp', '18', 'tmp_img_18.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '17');
INSERT INTO `wx_website_template` VALUES ('211', '模板19', 'tmp_index_19.jsp', '19', 'tmp_img_19.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '18');
INSERT INTO `wx_website_template` VALUES ('212', '模板20', 'tmp_index_20.jsp', '20', 'tmp_img_20.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '10');
INSERT INTO `wx_website_template` VALUES ('213', '模板21', 'tmp_index_21.jsp', '21', 'tmp_img_21.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '11');
INSERT INTO `wx_website_template` VALUES ('214', '模板22', 'tmp_index_22.jsp', '22', 'tmp_img_22.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('215', '模板23', 'tmp_index_23.jsp', '23', 'tmp_img_23.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('216', '模板24', 'tmp_index_24.jsp', '24', 'tmp_img_24.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('217', '模板25', 'tmp_index_25.jsp', '25', 'tmp_img_25.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('218', '模板26', 'tmp_index_26.jsp', '26', 'tmp_img_26.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('219', '模板27', 'tmp_index_27.jsp', '27', 'tmp_img_27.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('220', '模板28', 'tmp_index_28.jsp', '28', 'tmp_img_28.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('221', '模板29', 'tmp_index_29.jsp', '29', 'tmp_img_29.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('222', '模板30', 'tmp_index_30.jsp', '30', 'tmp_img_30.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('223', '模板31', 'tmp_index_31.jsp', '31', 'tmp_img_31.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('224', '模板32', 'tmp_index_32.jsp', '32', 'tmp_img_32.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, null);
INSERT INTO `wx_website_template` VALUES ('225', '模板33', 'tmp_index_33.jsp', '33', 'tmp_img_33.jpg', '1', '轮播图片', '2014-03-28 08:56:27', 0x31000000000000000000, '5');
INSERT INTO `wx_website_template` VALUES ('226', '模板34', 'tmp_index_34.jsp', '34', 'tmp_img_34.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '21');
INSERT INTO `wx_website_template` VALUES ('227', '模板35', 'tmp_index_35.jsp', '35', 'tmp_img_35.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '22');
INSERT INTO `wx_website_template` VALUES ('228', '模板36', 'tmp_index_36.jsp', '36', 'tmp_img_36.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '23');
INSERT INTO `wx_website_template` VALUES ('229', '模板37', 'tmp_index_37.jsp', '37', 'tmp_img_37.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x31000000000000000000, '24');
INSERT INTO `wx_website_template` VALUES ('230', '模板38', 'tmp_index_38.jsp', '38', 'tmp_img_38.jpg', '2', '大背景图', '2014-03-28 08:56:27', 0x30000000000000000000, '27');

-- ----------------------------
-- Table structure for `wx_wxuser_only`
-- ----------------------------
DROP TABLE IF EXISTS `wx_wxuser_only`;
CREATE TABLE `wx_wxuser_only` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lbstime` varchar(255) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_wxuser_only
-- ----------------------------
INSERT INTO `wx_wxuser_only` VALUES ('1', 'oCeOVt8UmOl9uGBbPzvy6Ap3e-u0', '画画', '2', 'http://wx.qlogo.cn/mmopen/djxNjLVAIF97WyE7g52VsErHJqBNTRyCue7z7U3WncEdVFpiaezpTW6pzPSnYu72KfYtIweicxSia0w1DGoia23dNxY1vkZwXvpx/0', '中国', '北京', '海淀', null, null, null, 'zh_CN', '2014-03-08 00:59:03', '2014-03-14 17:39:16');
INSERT INTO `wx_wxuser_only` VALUES ('11', 'oCeOVtyxXYvAhHXqSjF9G5PTfeeY', 'Lydia', '2', 'http://wx.qlogo.cn/mmopen/ufVMVgCvafJrGyjZQRnvo6fYGwZm9Dx997icBKxzcFdHLDChh5z4ZfbnpDibNPOh9SpXOCz4AAxwUiccXVvH0XfQicwddOxH9Sav/0', '中国', '北京', '海淀', null, null, null, 'zh_CN', '2014-03-14 17:39:16', '2014-03-14 17:39:16');
INSERT INTO `wx_wxuser_only` VALUES ('13', 'test', '测试账号', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCblx65ia55VK8qicaKsNlCER0vJTZMgL00mJhkqKjiavy4Dvh8ee91BXZp0ica0ztUTIT8ged5AjYEyA/0', '中国', '北京', '朝阳', '116.34483703814732', '39.980693289726716', '2014-08-10 20:02:24', 'zh_CN', '2014-03-09 16:25:07', '2014-03-14 17:39:16');
INSERT INTO `wx_wxuser_only` VALUES ('18', 'oCeOVtxb1JSruVLj58NUUIzg0F0Q', '????Nicole', '2', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKBCbx4rXZgwTEHWDqNV4WyG6mYXSHluJGNwKpTGjLNSxJiaJPj2N1Xpn1oFV1tPzSSQLI2Z8wHeIA/0', '中国', '北京', '海淀', '116.34514290453858', '39.98105160203326', '2014-08-01 16:40:37', 'zh_CN', '2014-08-01 16:37:27', '2014-08-01 16:37:27');
INSERT INTO `wx_wxuser_only` VALUES ('19', 'oCeOVt9uih3psBzJPy27PAYmNpbo', '夏乃茂', '1', 'http://wx.qlogo.cn/mmopen/d8HDrQibmbGxTibezf7tMdrT9qJ2ibfictv7yOaTxicIb4tH4CAIqVN8OooWASwbI7pVlHeiaIVhfnxMHg6rX1eeNUpg9lwZJfHg12/0', '中国', '北京', '海淀', '116.34500547061097', '39.980647447184346', '2014-08-07 21:30:40', 'zh_CN', '2014-08-07 21:28:18', '2014-08-07 21:28:18');
INSERT INTO `wx_wxuser_only` VALUES ('20', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', '很美味????', '1', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7HLDVVsVCbh6LcW080bQtMUMTd3kLzmBZBvMOAbibfHQh7mVicwpThyMUdEyUVMc2IeYCH8gUKpIqA/0', '中国', '北京', '朝阳', '116.34479897412896', '39.98088726513248', '2014-08-18 12:15:04', 'zh_CN', '2014-08-08 12:08:31', '2014-08-08 12:08:31');
INSERT INTO `wx_wxuser_only` VALUES ('21', 'oCeOVtyAyRqOmGOEmFZ2Czrf8rcA', '王博', '1', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4UJEETI3xb7v85Qy7jrhGSHUiclueYJkWSVnYibf4m4KeMiawttGAqjPpyttzDWya5r7Icp1nk8Zgtw/0', '中国', '北京', '昌平', '116.34408717683414', '39.981249608211286', '2014-08-08 12:15:40', 'zh_CN', '2014-08-08 12:12:38', '2014-08-08 12:12:38');
INSERT INTO `wx_wxuser_only` VALUES ('23', 'oCeOVt1NA5Xxi7QisEYzN8hpDqbU', '黄帅', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCDeZRnHxJDmssRPXIF3OR8PzDVn7so1K54X4FVzADtkFsv8ee03MUBh9hEnQibOKCocZRTXMldduA/0', '泽西岛', '', '', '116.34523471319034', '39.97870154847191', '2014-08-18 12:00:35', 'zh_CN', '2014-08-18 11:55:41', '2014-08-18 11:55:41');
INSERT INTO `wx_wxuser_only` VALUES ('24', 'oCeOVt0oEtCw9AKImt24HZgmR3NM', '黄凤姣', '2', 'http://wx.qlogo.cn/mmopen/d8HDrQibmbGxTibezf7tMdrbT00kF1xvOllSRvpkPzOn6uRq1snNSDCTpFps9ookpp6M3M5eQQclPKQ1ohMBwwOqlJ96q6NPZl/0', '中国', '湖南', '张家界', '116.34495934491294', '39.98062040170434', '2014-08-18 12:04:44', 'zh_CN', '2014-08-18 11:56:11', '2014-08-18 11:56:11');
INSERT INTO `wx_wxuser_only` VALUES ('25', 'oCeOVtxuApgaJuqox_s_eAdOncy8', 'xiaobai', '2', 'http://wx.qlogo.cn/mmopen/IEpWp3mVr6apyCLI09BrHRFEPawIibp1BOSmAkGGia3WXgO2ogHV49It2EYnSUicfXUtH6ics7yXibeYch0hMWb4PwKbibKmBaKoMn/0', '中国', '北京', '朝阳', null, null, null, 'zh_CN', '2014-08-18 12:25:18', '2014-08-18 12:25:18');
INSERT INTO `wx_wxuser_only` VALUES ('26', 'oCeOVt6mwMH0seshDbFpMDLgBIPs', 'Small Mr.Cao', '1', 'http://wx.qlogo.cn/mmopen/ufVMVgCvafJrGyjZQRnvo9wrzceXMex1LO5x4UZBQrcPpHH4wWiagdwR0Y2eqbDskibg1wia9d96g2f3Lv41oP5PScyzqSuNeS4/0', '中国', '山西', '运城', '116.345212042132', '39.98081565355509', '2014-08-18 13:49:01', 'zh_CN', '2014-08-18 13:48:47', '2014-08-18 13:48:47');
INSERT INTO `wx_wxuser_only` VALUES ('27', 'o6ekvt8A6t_AGoHFfm8VF40pRIrc', '王博', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAcGrAwexQtwv0j2vRC9mekw1yBOEnkEGLquVsiajhuoibpUuRmlvX0sibkaicPRwylxibl3rMkQahxkzg/0', '中国', '北京', '昌平', null, null, null, 'zh_CN', '2014-12-18 17:09:38', '2014-12-18 17:09:38');
INSERT INTO `wx_wxuser_only` VALUES ('28', 'o6ekvtwKnE3N0XV7Xq32w-Pns2ts', '香坊大哧花', '1', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4Yc62q0J9unpmxc4upQ3daNGdGeIYnvg4VQRSXHwx3bbQib1ZCzFeLCiaK626WbWABsfricDIbdaWVg/0', '中国', '北京', '朝阳', null, null, null, 'zh_CN', '2014-12-18 17:46:49', '2014-12-18 17:46:49');
INSERT INTO `wx_wxuser_only` VALUES ('29', 'o6ekvt6cKJ2xXECFeUea5nVSAGys', '黄帅', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDdXsGY5QnCCiaI7Tib9CRSyW5RJJtfsBFZAWfw2tedc9e1sqnfzGfyh5iatcjwicdPSfib7jNkIBk6a1Q/0', '泽西岛', '', '', null, null, null, 'zh_CN', '2014-12-18 18:31:45', '2014-12-18 18:31:45');
INSERT INTO `wx_wxuser_only` VALUES ('30', 'o6ekvty2NtT_iqvk5VS7SIflnhlU', '百动网-刘波', '1', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5EiaCibn35WicibGZrJa4GB0cp4ZhicC8U5M5oU4gTCP1Mlbv1qyr14pnc4h7iaAShbWciceuiaFR8icSelvg/0', '中国', '北京', '朝阳', null, null, null, 'zh_CN', '2014-12-18 18:59:57', '2014-12-18 18:59:57');

-- ----------------------------
-- Table structure for `wx_wxuser_union`
-- ----------------------------
DROP TABLE IF EXISTS `wx_wxuser_union`;
CREATE TABLE `wx_wxuser_union` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` bigint(20) DEFAULT NULL,
  `ToUserName` varchar(50) DEFAULT NULL,
  `FromUserName` varchar(50) DEFAULT NULL,
  `isunsubscribe` int(10) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `updatetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_wxuser_union
-- ----------------------------
INSERT INTO `wx_wxuser_union` VALUES ('2', '1394033989490', 'gh_375df64175b8', 'oTTrWjrM2dXV4PtVtqtNnxslcyIA', null, '2014-03-15 17:22:49', '2014-03-15 17:22:51');
INSERT INTO `wx_wxuser_union` VALUES ('3', '1394033989490', 'gh_375df64175b8', 'oTTrWjhMPqWL5ULfKkNRCVDBdxBY', null, '2014-03-15 18:01:17', '2014-03-15 18:01:17');
INSERT INTO `wx_wxuser_union` VALUES ('4', '1394033989490', 'gh_375df64175b8', 'oTTrWjj_94Keg3E-TaUiJBzlgne8', '0', '2014-03-15 18:50:50', '2014-03-15 18:58:56');
INSERT INTO `wx_wxuser_union` VALUES ('5', '1394033989490', 'gh_375df64175b8', 'oTTrWjuf6dGLQxUazMDQFgAB9vRw', '0', '2014-03-15 18:58:37', '2014-03-15 18:58:53');
INSERT INTO `wx_wxuser_union` VALUES ('6', '1394033989490', 'gh_375df64175b8', 'oTTrWjmELz4pbwI3bbuYaapKk4QY', '0', '2014-03-15 18:58:54', '2014-03-15 18:59:16');
INSERT INTO `wx_wxuser_union` VALUES ('7', '1394033989490', 'gh_375df64175b8', 'oTTrWjgTKd2S3_pUxjUMT9Fo0dNo', '0', '2014-03-17 21:01:18', '2014-03-19 12:19:46');
INSERT INTO `wx_wxuser_union` VALUES ('8', '1394033989490', 'gh_375df64175b8', 'oTTrWjt_EQUDNPjoWLj4e3ca9OOw', '0', '2014-03-18 19:05:12', '2014-03-18 19:05:12');
INSERT INTO `wx_wxuser_union` VALUES ('9', '1394033989490', 'gh_375df64175b8', 'oTTrWjvRlMmJSnp-TPfU2aPDhN8U', '1', '2014-03-18 19:06:11', '2014-03-18 19:07:16');
INSERT INTO `wx_wxuser_union` VALUES ('10', '1394033989490', 'gh_375df64175b8', 'oTTrWjjxrBhPJjWiMzsCFUyPy4kY', '0', '2014-03-19 12:13:38', '2014-03-19 12:13:44');
INSERT INTO `wx_wxuser_union` VALUES ('11', '1394033989490', 'gh_375df64175b8', 'oTTrWjpTIb161VtFSU-cgJ1n7WWg', '0', '2014-03-19 15:34:24', '2014-03-19 15:34:24');
INSERT INTO `wx_wxuser_union` VALUES ('12', '1394033989490', 'gh_375df64175b8', 'oTTrWjuAtfB4CvL42OeqUAdbx6OA', '0', '2014-03-19 15:42:27', '2014-03-19 15:42:27');
INSERT INTO `wx_wxuser_union` VALUES ('13', '1394033989490', 'gh_375df64175b8', 'oTTrWjgAELRQo8S7C1hYVJqwOsb0', '0', '2014-03-19 17:20:27', '2014-03-19 17:20:27');
INSERT INTO `wx_wxuser_union` VALUES ('14', '1394033989490', 'gh_375df64175b8', 'oTTrWjjUkOi1pmTg3YEHMU2-lNX4', '0', '2014-03-19 17:28:21', '2014-03-19 17:28:21');
INSERT INTO `wx_wxuser_union` VALUES ('15', '1394033989490', 'gh_375df64175b8', 'oTTrWjpbMdLxBiXRP8PNcJEiolXk', '1', '2014-03-19 17:41:01', '2014-03-19 17:43:49');
INSERT INTO `wx_wxuser_union` VALUES ('16', '1394033989490', 'gh_375df64175b8', 'oTTrWjopla4terz325YDKcd33V0I', '0', '2014-03-19 21:46:28', '2014-03-19 21:46:28');
INSERT INTO `wx_wxuser_union` VALUES ('17', '1394033989490', 'gh_375df64175b8', 'oTTrWjkHCN6F2qt9KMhEo9DZViLY', '0', '2014-03-19 21:48:19', '2014-03-31 21:12:33');
INSERT INTO `wx_wxuser_union` VALUES ('18', '1394033989490', 'gh_2232a1133b6e', 'o1Q5huGxSuG707Vh5VHoj8uEqcK8', '0', '2014-03-24 11:54:09', '2014-03-24 11:54:09');
INSERT INTO `wx_wxuser_union` VALUES ('19', '1394033989490', 'gh_375df64175b8', 'oTTrWjitlDxios_4px9lNAHaYfUQ', '1', '2014-03-31 20:04:24', '2014-03-31 20:04:24');
INSERT INTO `wx_wxuser_union` VALUES ('20', '1394033989490', 'gh_375df64175b8', 'oTTrWjk3HMOHnEO7JlUNp3KzUTI4', '0', '2014-03-31 20:16:26', '2014-03-31 20:16:26');
INSERT INTO `wx_wxuser_union` VALUES ('21', '1394033989490', 'gh_375df64175b8', 'oTTrWjn94mUhfo3w8MikcJg37XvM', '0', '2014-04-04 16:41:51', '2014-06-23 14:51:17');
INSERT INTO `wx_wxuser_union` VALUES ('22', '1394033989490', 'gh_fd9693863ed5', 'oCeOVtzkMqFT-z9DhzjIMGbGbJVw', '1', '2014-07-18 13:22:18', '2014-07-21 16:56:16');
