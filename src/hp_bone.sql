/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hp_bone

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-02-19 14:34:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `drugplace`
-- ----------------------------
DROP TABLE IF EXISTS `drugplace`;
CREATE TABLE `drugplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` char(6) NOT NULL,
  `s_id` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugplace
-- ----------------------------
INSERT INTO `drugplace` VALUES ('28', '1002', '1');
INSERT INTO `drugplace` VALUES ('31', '1005', '3');
INSERT INTO `drugplace` VALUES ('32', '1006', '1');
INSERT INTO `drugplace` VALUES ('33', '1006', '2');
INSERT INTO `drugplace` VALUES ('34', '1007', '2');
INSERT INTO `drugplace` VALUES ('35', '1007', '3');
INSERT INTO `drugplace` VALUES ('36', '1007', '4');
INSERT INTO `drugplace` VALUES ('37', '1008', '1');
INSERT INTO `drugplace` VALUES ('38', '1009', '1');
INSERT INTO `drugplace` VALUES ('39', '1010', '3');
INSERT INTO `drugplace` VALUES ('40', '1011', '3');
INSERT INTO `drugplace` VALUES ('41', '1012', '3');
INSERT INTO `drugplace` VALUES ('42', '1012', '4');
INSERT INTO `drugplace` VALUES ('43', '1013', '3');
INSERT INTO `drugplace` VALUES ('44', '1004', '4');
INSERT INTO `drugplace` VALUES ('45', '1004', '1');
INSERT INTO `drugplace` VALUES ('46', '1004', '2');
INSERT INTO `drugplace` VALUES ('47', '1004', '3');
INSERT INTO `drugplace` VALUES ('48', '1003', '2');
INSERT INTO `drugplace` VALUES ('49', '1003', '3');
INSERT INTO `drugplace` VALUES ('50', '1003', '4');
INSERT INTO `drugplace` VALUES ('55', '1001', '1');
INSERT INTO `drugplace` VALUES ('56', '1001', '3');

-- ----------------------------
-- Table structure for `t_city`
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `cid` char(5) NOT NULL,
  `city_name` varchar(20) DEFAULT NULL COMMENT '政策编号',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '洛阳', '1');
INSERT INTO `t_city` VALUES ('2', '天津', '1');
INSERT INTO `t_city` VALUES ('3', '北京', '1');
INSERT INTO `t_city` VALUES ('4', '山西', '1');
INSERT INTO `t_city` VALUES ('5', '安徽', '1');

-- ----------------------------
-- Table structure for `t_company`
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `c_id` char(5) NOT NULL COMMENT '医药公司编号,主键',
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `c_phone` varchar(11) DEFAULT NULL COMMENT '公司电话',
  `flag` char(1) DEFAULT NULL COMMENT '标记位',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '天津博康胜家大药房有限公司苏堤路店', '68785223', '1');
INSERT INTO `t_company` VALUES ('2', '天津市诚真大药房有限公司', '68385447', '1');
INSERT INTO `t_company` VALUES ('3', '天津市旭润医药销售有限公司', '68530221', '1');
INSERT INTO `t_company` VALUES ('4', '天津麦德信药品销售有限公司', '56587777', '1');
INSERT INTO `t_company` VALUES ('5', '老百姓大药房连锁有限公司', '65554545', '1');
INSERT INTO `t_company` VALUES ('6', '尼德开尔药品销售有限公司', '68885322', '1');

-- ----------------------------
-- Table structure for `t_county`
-- ----------------------------
DROP TABLE IF EXISTS `t_county`;
CREATE TABLE `t_county` (
  `county_id` char(5) NOT NULL,
  `county_name` varchar(20) DEFAULT NULL COMMENT '政策编号',
  `belong_city` char(5) DEFAULT NULL,
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`county_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_county
-- ----------------------------
INSERT INTO `t_county` VALUES ('1', '孟津', '1', '1');
INSERT INTO `t_county` VALUES ('2', '河西', '2', '1');
INSERT INTO `t_county` VALUES ('3', '海淀', '3', '1');
INSERT INTO `t_county` VALUES ('4', '阳泉', '4', '1');
INSERT INTO `t_county` VALUES ('5', '合肥', '5', '1');

-- ----------------------------
-- Table structure for `t_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_detail`;
CREATE TABLE `t_detail` (
  `d_id` char(7) NOT NULL,
  `time` date DEFAULT NULL,
  `id_card` varchar(20) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `part` varchar(100) DEFAULT NULL COMMENT '关节部位',
  `swell` varchar(50) DEFAULT NULL COMMENT '肿胀',
  `sweeny` varchar(50) DEFAULT NULL COMMENT '肌肉萎缩',
  `pain` varchar(50) DEFAULT NULL COMMENT '关节疼',
  `muscle` varchar(50) DEFAULT NULL COMMENT '肌力',
  `global` varchar(50) DEFAULT NULL COMMENT '总体步态',
  `data` int(11) DEFAULT NULL,
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_detail
-- ----------------------------
INSERT INTO `t_detail` VALUES ('1', '2018-03-13', '12345620180322', 'manager', '左肘', '60', '65', '10', '50', '20', '20', '1');
INSERT INTO `t_detail` VALUES ('10', '2018-03-14', '12345620180322', 'manager', '右膝', '68', '82', '16', '94', '75', '68', '1');
INSERT INTO `t_detail` VALUES ('1018', '2018-03-23', '12345620180322', '祝言之', '右肘', '100', '60', '10', '50', '80', '62', '1');
INSERT INTO `t_detail` VALUES ('1019', '2018-03-23', '12345620180322', '祝言之', '左膝', '75', '60', '60', '75', '80', '80', '1');
INSERT INTO `t_detail` VALUES ('1020', '2018-03-23', '12345620180322', '祝言之', '左肘', '100', '100', '60', '75', '80', '83', '1');
INSERT INTO `t_detail` VALUES ('1021', '2018-03-23', '12345620180322', '祝言之', '右膝', '75', '60', '60', '75', '60', '62', '1');
INSERT INTO `t_detail` VALUES ('1022', '2018-03-23', '12345620180322', '祝言之', '左踝', '100', '100', '100', '100', '100', '100', '1');
INSERT INTO `t_detail` VALUES ('1023', '2018-03-23', '12345620180322', '祝言之', '右踝', '25', '20', '10', '0', '0', '19', '1');
INSERT INTO `t_detail` VALUES ('1024', '2018-03-16', '12345620180322', '祝言之', '左肘', '50', '60', '60', '25', '80', '59', '1');
INSERT INTO `t_detail` VALUES ('1025', '2018-03-16', '12345620180322', '祝言之', '右肘', '75', '100', '10', '50', '80', '63', '1');
INSERT INTO `t_detail` VALUES ('1026', '2018-03-16', '12345620180322', '祝言之', '左膝', '75', '60', '100', '100', '100', '87', '1');
INSERT INTO `t_detail` VALUES ('1027', '2018-03-16', '12345620180322', '祝言之', '右膝', '100', '60', '60', '25', '40', '76', '1');
INSERT INTO `t_detail` VALUES ('1028', '2018-03-16', '12345620180322', '祝言之', '左踝', '100', '100', '100', '100', '100', '100', '1');
INSERT INTO `t_detail` VALUES ('1029', '2018-03-16', '12345620180322', '祝言之', '右踝', '100', '100', '100', '100', '100', '100', '1');
INSERT INTO `t_detail` VALUES ('1030', '2018-03-15', '12345620180322', '祝言之', '左肘', '25', '100', '100', '0', '0', '61', '1');
INSERT INTO `t_detail` VALUES ('1031', '2018-03-15', '12345620180322', '祝言之', '右肘', '75', '60', '10', '0', '20', '54', '1');
INSERT INTO `t_detail` VALUES ('1032', '2018-03-15', '12345620180322', '祝言之', '右肘', '100', '100', '100', '100', '100', '100', '1');
INSERT INTO `t_detail` VALUES ('1033', '2018-03-15', '12345620180322', '祝言之', '左膝', '50', '60', '60', '25', '20', '40', '1');
INSERT INTO `t_detail` VALUES ('1034', '2018-03-15', '12345620180322', '祝言之', '左膝', '75', '100', '10', '100', '100', '81', '1');
INSERT INTO `t_detail` VALUES ('1035', '2018-03-15', '12345620180322', '祝言之', '右膝', '75', '20', '60', '25', '80', '73', '1');
INSERT INTO `t_detail` VALUES ('1036', '2018-03-15', '12345620180322', '祝言之', '左踝', '25', '100', '100', '100', '100', '83', '1');
INSERT INTO `t_detail` VALUES ('1037', '2018-03-15', '12345620180322', '祝言之', '右踝', '50', '60', '60', '50', '100', '74', '1');
INSERT INTO `t_detail` VALUES ('11', '2018-03-14', '12345620180322', 'manager', '左踝', '76', '74', '68', '59', '66', '74', '1');
INSERT INTO `t_detail` VALUES ('12', '2018-03-14', '12345620180322', 'manager', '右踝', '76', '94', '68', '85', '75', '72', '1');
INSERT INTO `t_detail` VALUES ('13', '2018-03-16', '12345620180322', 'manager', '左肘', '85', '94', '76', '75', '72', '74', '1');
INSERT INTO `t_detail` VALUES ('14', '2018-03-16', '12345620180322', 'manager', '右肘', '76', '74', '73', '82', '81', '88', '1');
INSERT INTO `t_detail` VALUES ('15', '2018-03-16', '12345620180322', 'manager', '左膝', '75', '76', '84', '82', '83', '84', '1');
INSERT INTO `t_detail` VALUES ('16', '2018-03-16', '12345620180322', 'manager', '右膝', '85', '74', '72', '72', '73', '71', '1');
INSERT INTO `t_detail` VALUES ('17', '2018-03-16', '12345620180322', 'manager', '左踝', '75', '74', '96', '85', '74', '72', '1');
INSERT INTO `t_detail` VALUES ('18', '2018-03-16', '12345620180322', 'manager', '右踝', '75', '65', '55', '75', '85', '85', '1');
INSERT INTO `t_detail` VALUES ('2', '2018-03-13', '12345620180322', 'manager', '右肘', '61', '62', '71', '85', '80', '63', '1');
INSERT INTO `t_detail` VALUES ('3', '2018-03-13', '12345620180322', 'manager', '左膝', '62', '65', '73', '80', '78', '10', '1');
INSERT INTO `t_detail` VALUES ('4', '2018-03-13', '12345620180322', 'manager', '右膝', '70', '70', '66', '81', '82', '20', '1');
INSERT INTO `t_detail` VALUES ('5', '2018-03-13', '12345620180322', 'manager', '左踝', '71', '72', '69', '79', '76', '30', '1');
INSERT INTO `t_detail` VALUES ('6', '2018-03-13', '12345620180322', 'manager', '右踝', '73', '76', '70', '82', '83', '50', '1');
INSERT INTO `t_detail` VALUES ('7', '2018-03-14', '12345620180322', 'manager', '左肘', '70', '70', '70', '70', '70', '78', '1');
INSERT INTO `t_detail` VALUES ('8', '2018-03-14', '12345620180322', 'manager', '右肘', '75', '82', '91', '55', '72', '64', '1');
INSERT INTO `t_detail` VALUES ('9', '2018-03-14', '12345620180322', 'manager', '左膝', '68', '85', '94', '12', '55', '64', '1');

-- ----------------------------
-- Table structure for `t_dmessage`
-- ----------------------------
DROP TABLE IF EXISTS `t_dmessage`;
CREATE TABLE `t_dmessage` (
  `d_id` char(7) NOT NULL COMMENT '医生回复编号',
  `doc_phone` varchar(50) NOT NULL COMMENT '医生电话',
  `message` text COMMENT '回复内容',
  `dm_date` datetime NOT NULL COMMENT '回复时间',
  `p_id` char(7) NOT NULL COMMENT '患者留言id',
  `flag` char(1) NOT NULL COMMENT '标记',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dmessage
-- ----------------------------

-- ----------------------------
-- Table structure for `t_doctor`
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor`;
CREATE TABLE `t_doctor` (
  `doc_phone` varchar(50) NOT NULL COMMENT '医生电话',
  `name` varchar(100) NOT NULL COMMENT '医生姓名',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `grade` varchar(20) NOT NULL COMMENT '级别',
  `doc_type` char(5) NOT NULL COMMENT '诊治类别',
  `hospital` varchar(50) NOT NULL COMMENT '所属医院',
  `doc_pass` varchar(50) NOT NULL COMMENT '登录密码',
  `flag` char(1) DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`doc_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_doctor
-- ----------------------------
INSERT INTO `t_doctor` VALUES ('13116554669', '黄卫国', '男', '47', '普通医生', '1', '天津一中心医院', '13116554669', '1');
INSERT INTO `t_doctor` VALUES ('13132509283', '韩峰', '男', '31', '普通医生', '2', '天津一中心医院', '13132509283', '1');
INSERT INTO `t_doctor` VALUES ('13682033268', '李贺', '男', '36', '主任医生', '1', '天津一中心医院', '13682033268', '1');
INSERT INTO `t_doctor` VALUES ('15222006080', '祝言之', '男', '54', '主任医生', '2', '天津一中心医院', '15222006080', '1');
INSERT INTO `t_doctor` VALUES ('15223365599', '侯吉祥', '男', '39', '普通医生', '2', '天津一中心医院', '15223365599', '1');
INSERT INTO `t_doctor` VALUES ('15232684599', '徐晨光', '男', '39', '普通医生', '2', '天津一中心医院', '15232684599', '1');
INSERT INTO `t_doctor` VALUES ('15602223231', '陈凯歌', '男', '35', '主任医生', '1', '天津一中心医院', '15602223231', '1');
INSERT INTO `t_doctor` VALUES ('15902292107', '康维斯', '男', '48', '主任医生', '3', '天津一中心医院', '15902292107', '1');
INSERT INTO `t_doctor` VALUES ('18222611331', '王爱民', '女', '46', '主任医生', '2', '天津一中心医院', '18222611331', '1');
INSERT INTO `t_doctor` VALUES ('18622342353', '汪扬', '女', '35', '普通医生', '3', '天津一中心医院', '18622342353', '1');

-- ----------------------------
-- Table structure for `t_dtype`
-- ----------------------------
DROP TABLE IF EXISTS `t_dtype`;
CREATE TABLE `t_dtype` (
  `id` char(5) NOT NULL,
  `dtype` varchar(200) DEFAULT NULL COMMENT '医生编号',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dtype
-- ----------------------------
INSERT INTO `t_dtype` VALUES ('1', '肩部', '1');
INSERT INTO `t_dtype` VALUES ('2', '踝部', '1');
INSERT INTO `t_dtype` VALUES ('3', '膝部', '1');

-- ----------------------------
-- Table structure for `t_durg`
-- ----------------------------
DROP TABLE IF EXISTS `t_durg`;
CREATE TABLE `t_durg` (
  `drug_id` char(6) NOT NULL COMMENT '药品编号',
  `title` text COMMENT '药理信息',
  `drugname` varchar(100) DEFAULT NULL COMMENT '药品名称',
  `sysmptom` text COMMENT '适应症状',
  `admin` varchar(20) DEFAULT NULL,
  `image` text,
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_durg
-- ----------------------------
INSERT INTO `t_durg` VALUES ('1001', '本品为健康猪四肢骨提取物骨肽粉制成的片剂，每片含多肽类物质不低于40mg。口服。一次2片，一日3次。饭后服用，15天为一疗程。本品具有调节骨代谢，刺激成骨细胞增殖，促进新骨形成，以及调节钙、磷代谢，增加骨钙沉积，防治骨质疏松作用。', '骨肽片', '用于骨性关节炎；风湿、类风湿关节炎；骨折（也可用于骨质疏松，颈椎病）。', 'admin', 'img/drugimage/1001.jpg', '1');
INSERT INTO `t_durg` VALUES ('1002', '每贴（14cm╳10cm），含膏体13g；每克膏体含吲哚美辛3.5 mg\r\n适应症状：1.用于缓解局部软组织疼痛，如运动创伤（如扭伤、拉伤、肌腱损伤等）引起的局部软组织疼痛； 2.用于慢性软组织劳损（如颈部、肩背、腰腿等）所致的局部酸痛； 3.用于骨关节疾病（如颈椎病、类风湿性关节炎、风湿性关节炎、肩周炎等）的局部对症止痛治疗。\r\n每贴（14cm╳10cm），含膏体13g；每克膏体含吲哚美辛3.5 mg\r\n适应症状：1.用于缓解局部软组织疼痛，如运动创伤（如扭伤、拉伤、肌腱损伤等）引起的局部软组织疼痛； 2.用于慢性软组织劳损（如颈部、肩背、腰腿等）所致的局部酸痛； 3.用于骨关节疾病（如颈椎病、类风湿性关节炎、风湿性关节炎、肩周炎等）的局部对症止痛治疗。\r\n每贴（14cm╳10cm），含膏体13g；每克膏体含吲哚美辛3.5 mg\r\n适应症状：1.用于缓解局部软组织疼痛，如运动创伤（如扭伤、拉伤、肌腱损伤等）引起的局部软组织疼痛； 2.用于慢性软组织劳损（如颈部、肩背、腰腿等）所致的局部酸痛； 3.用于骨关节疾病（如颈椎病、类风湿性关节炎、风湿性关节炎、肩周炎等）的局部对症止痛治疗。\r\n每贴（14cm╳10cm），含膏体13g；每克膏体含吲哚美辛3.5 mg', '吲哚美辛巴布膏', '1.用于缓解局部软组织疼痛，如运动创伤（如扭伤、拉伤、肌腱损伤等）引起的局部软组织疼痛； 2.用于慢性软组织劳损（如颈部、肩背、腰腿等）所致的局部酸痛； 3.用于骨关节疾病（如颈椎病、类风湿性关节炎、风湿性关节炎、肩周炎等）的局部对症止痛治疗。', 'admin', 'img/drugimage/1002.jpg', '1');
INSERT INTO `t_durg` VALUES ('1003', '熟地黄、何首乌、杜仲、鹿衔草、骨碎补（烫）、钩藤、葛根、三七、莱菔子（炒）。辅料为淀粉。', '颈康胶囊', '补肾、活血、止痛。用于肾虚血瘀所致的颈椎病，症见：颈项胀痛麻木、活动不利，头晕耳鸣等。', 'admin', 'img/drugimage/1003.jpg', '1');
INSERT INTO `t_durg` VALUES ('1004', '熟地黄、鹿衔草、烫骨碎补、鸡血藤、肉苁蓉、淫羊藿、炒莱菔子。', '抗骨增生片', '补肾，活血，止痛。用于肥大性脊椎炎，颈椎病，跟骨刺，增生性关节炎，大骨节病。', 'admin', '/img/drugimage/1004.jpg', '1');
INSERT INTO `t_durg` VALUES ('1005', '黑蚂蚁、黑翅土白蚁、全蝎及人参、当归、红花等十八味名贵中药材。', '双蚁祛湿通络胶囊', '补肝肾、益气血、活血通络、祛风除湿的功能，临床用于改善肝肾两亏、气血不足引起的腰膝冷痛、肢气肿胀、麻木不仁、酸软乏力、屈伸不利等痹证症状。', 'admin', '/img/drugimage/1005.jpg', '1');
INSERT INTO `t_durg` VALUES ('1006', '当归、白芍、白术、薏苡仁、附子(制)、桂枝、乌梢蛇、地龙、牛膝、细辛、甘草。', '薏辛除湿止痛胶囊', '散寒除湿，活血止痛。用于痹症寒湿闭阻，瘀血阻滞引起的关节疼痛，关节肿胀等症状的辅助治疗。', 'admin', '/img/drugimage/1006.jpg', '1');
INSERT INTO `t_durg` VALUES ('1007', '连翘、金银花、炙麻黄、炒苦杏仁、石膏、板蓝根、绵马贯众、鱼腥草、广藿香、大黄、红景天、薄荷脑、甘草。辅料为：淀粉。', '连花清瘟胶囊', '清瘟解毒，宣肺泄热。用于治疗流行性感冒属热毒袭肺证，症见：发热或高热，恶寒，肌肉酸痛，鼻塞流涕，咳嗽，头痛，咽干咽痛，舌偏红，苔黄或黄腻等。', 'admin', '/img/drugimage/1007.jpg', '1');
INSERT INTO `t_durg` VALUES ('1008', '本品每片含氯唑沙宗125毫克，对乙酰氨基酚150毫克。', '复方氯唑沙宗片', '本品适用于各种急性、慢性软组织（肌肉、韧带、筋膜）扭伤、挫伤，运动后肌肉酸痛、肌肉劳损所引起的疼痛、由中枢神经病变引起的肌肉痉挛，以及慢性筋膜炎等', 'admin', '/img/drugimage/1008.jpg', '1');
INSERT INTO `t_durg` VALUES ('1009', '黄连、栀子(姜制)、连翘、荆芥穗、白芷、菊花、薄荷、川芎、石膏、黄芩、黄柏(酒炒)、酒大黄等味。', '黄连上清丸', '散风清热，泻火止痛。用于风热上攻、肺胃热盛所致的头晕目眩、牙齿疼痛、口舌生疮、咽喉肿痛、耳痛耳鸣、大便秘结、小便短赤。', 'admin', '/img/drugimage/1009.jpg', '1');
INSERT INTO `t_durg` VALUES ('1010', '马钱子粉、川牛膝、当归、全蝎、红花、木瓜、荆芥、防风。', '通络开痹片', '祛风通络，活血散结。用于寒热错杂瘀血阻络所致的关节疼痛、肿胀；类风湿性关节炎具上述证候者。', 'admin', '/img/drugimage/1010.jpg', '1');
INSERT INTO `t_durg` VALUES ('1011', '水蛭。', '脉血康胶囊', '破血，逐瘀，通脉止痛。用于症瘕痞块，血瘀经闭，跌打损伤。', 'admin', '/img/drugimage/1011.jpg', '1');
INSERT INTO `t_durg` VALUES ('1012', '本品主要成分是对乙酰氨基酚；化学名为N-（4-羟基苯基）乙酰胺。', '对乙酰氨基酚缓释片', '用于普通感冒或流行性感冒引起的发热，也用于缓解轻至中度疼痛如头痛、关节痛、偏头痛、牙痛、肌肉痛、神经痛、痛经。', 'admin', '/img/drugimage/1012.jpg', '1');
INSERT INTO `t_durg` VALUES ('1013', '2-氨基-2-脱氨-葡萄糖盐酸盐', '盐酸氨基葡萄糖胶囊', '镇痛类药品.用于缓解和预防关节软骨磨损、退化引起的关节疼痛,包括膝、髋、脊柱、肩、手腕、踝关节等.', 'admin', '/img/drugimage/1013.jpg', '1');
INSERT INTO `t_durg` VALUES ('1014', '每片含对乙酰氨基酚500毫克;咖啡因65毫克。辅料为：微晶纤维素、玉米淀粉、硬脂酸镁、欧巴代Y-1-7000B白色素、巴西棕榈蜡，异抗坏血酸、聚乙烯吡咯烷酮K-29-32、尼泊金甲酯、尼泊金丙酯、交联聚乙烯吡咯烷酮。', '酚咖片', '用于普通感冒或流行性感冒引起的发热。也用于缓解轻至中度疼痛，如头痛、偏头痛，牙痛、神经痛、肌肉痛、痛经及关节痛等。', 'admin', 'img/drugimage/1014.jpg', '1');
INSERT INTO `t_durg` VALUES ('1015', '搜山虎、黄杜鹃根、川乌、草乌、天南星、半夏、樟脑、薄荷脑。', '双虎肿痛宁喷雾剂', '化瘀行气，消肿止痛，舒筋活络，驱风除湿。用于跌打损伤，扭伤，摔伤，风湿关节痛等。', 'admin', 'img/drugimage/1015.jpg', '1');

-- ----------------------------
-- Table structure for `t_manager`
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `m_id` varchar(20) NOT NULL,
  `mana_pass` varchar(50) DEFAULT NULL,
  `flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('admin', 'admin', '1');
INSERT INTO `t_manager` VALUES ('manager', 'manager', '0');

-- ----------------------------
-- Table structure for `t_material`
-- ----------------------------
DROP TABLE IF EXISTS `t_material`;
CREATE TABLE `t_material` (
  `m_id` char(5) NOT NULL COMMENT '材料编号',
  `type` text COMMENT '材料类型',
  `message` text COMMENT '材料内容',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_material
-- ----------------------------
INSERT INTO `t_material` VALUES ('1001', '门诊报销', '门诊报销携带资料：门诊发票、合作医疗证历本（或病历）。 ', '1');
INSERT INTO `t_material` VALUES ('1002', '住院报销', '住院报销携带资料：住院发票、合作医疗证历本（或病历）、费用明细清单、出院小结、其它有关证明。', '1');
INSERT INTO `t_material` VALUES ('1003', '门诊特殊病报销', '门诊特殊病报销携带资料：门诊发票、特殊病种合作医疗证历本。', '1');
INSERT INTO `t_material` VALUES ('1005', '特殊病种', '办理特殊病种携带资料：特殊病种门诊治疗建议书，合作医疗证历本、病历、有关化验报告单、照片二张。', '1');

-- ----------------------------
-- Table structure for `t_medicalplicy`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicalplicy`;
CREATE TABLE `t_medicalplicy` (
  `mcp_id` char(5) NOT NULL COMMENT '医保编号',
  `title` varchar(100) DEFAULT NULL COMMENT '政策标题',
  `message` text COMMENT '政策内容',
  `mp_time` date DEFAULT NULL COMMENT '发布时间',
  `place` char(5) DEFAULT NULL COMMENT '地区',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`mcp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicalplicy
-- ----------------------------
INSERT INTO `t_medicalplicy` VALUES ('1001', '重大疾病有效救治', '<p><span style=\'font-weight: bold; font-family: serif;\'><span style=\'font-size: 10.5pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 0, 0);\'>构建多层次大病保障体系 重大疾病实行病种付费</span></span></p><h1 style=\'line-height: 1.5;\'><span style=\'font-weight: bold; font-family: serif;\'><span style=\'font-size: 10.5pt;\'>&nbsp;&nbsp;&nbsp;&nbsp;在现有保障体系基础上，针对有重大社会影响的重大疾病、罕见病，实行病种付费，通过谈判等方式，将特种药品纳入保障范围，建立精准保障制度。同时探索利用部分基金结余，托底保障重特大疾病患者，以减少家庭医疗费用负担。</span></span></h1>', '2014-03-04', '1', '1');
INSERT INTO `t_medicalplicy` VALUES ('1002', '保障困难群体医疗救治', '<p class=\'MsoNormal\'><span style=\'font-family: 宋体; font-size: 16px; font-weight: bold;\'>&nbsp;　</span><span style=\'font-weight: bold;\'><span style=\'font-family: 宋体; font-size: 16px;\'>　</span><span style=\'font-family: 宋体; font-size: 16px;\'>全额补助困难群体参保 加强对特别困难群体的保障</span></span><span style=\'font-family: 宋体; font-size: 16px; font-weight: bold;\'>&nbsp;</span></p><p class=\'MsoNormal\'><span style=\'font-family: 宋体; font-size: 16px;\'>对于困难群体的医疗帮扶，主要从4个方面着手。 　</span></p><p class=\'MsoNormal\'><span style=\'font-family: 宋体; font-size: 16px;\'>一是全额补助困难群体参保，重残、低保、以及其他各类困难人员参加居民医保，个人不缴费，由政府全额补助。 　　</span></p><p class=\'MsoNormal\'><span style=\'font-family: 宋体; font-size: 16px;\'>二是提高低保户、低保边缘户的筹资和保障水平，筹资标准由低档850元调整为中档1080元，住院报销比例相应提高5个百分点。</span></p><p class=\'MsoNormal\'><span style=\'font-family: 宋体; font-size: 16px;\'>　三是加强对特别困难群体保障。对低保户和低保边缘户当中的的重残、单亲、失独、农村五保和城市“三无”人员，以及优抚对象，参加居民医保按高档1380元筹资，政府全额补助，并享受相应的医保待遇。</span><br><span style=\'font-family: 宋体; font-size: 16px;\'>四是加强伤残军人的医疗保障。一至六级伤残军人参加职工医保，由单位缴费或政府补助参保。</span></p>', '2014-03-04', '2', '1');
INSERT INTO `t_medicalplicy` VALUES ('1003', '意外伤害附加保险', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\'font-weight: bold;\'> &nbsp; &nbsp; 继续实施意外伤害附加保险制度 参保人员均纳入保障范围 　　</span></p><h4><span style=\'background-color: rgb(255, 255, 0);\'>&nbsp; &nbsp; &nbsp; 凡是参加职工医保和居民医保的人员均纳入意外险的保障范围，保险费分别从职工大额医疗费救助资金和居民基本医疗保险资金中筹集，参保人个人不缴费;凡是因突发的、外来的、非本人意愿的意外事故造成伤害、伤残或者死亡的，按照标准赔付。制度运行5年来，总支出金额达到15亿元。今后，将继续深入实施意外伤害附加保险制度。</span></h4>', '2014-03-27', '3', '1');
INSERT INTO `t_medicalplicy` VALUES ('1004', '京津冀医保协同发展', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\'font-weight: bold;\'>京津冀医保协同发展</span></h2><h2>津冀两地已签署《备忘录》 下一步实现医疗保险机构互认 　　</h2><p>目前，天津市人社局与河北省人社厅共同签署了《共建津冀异地就医结算平台工作备忘录》，将从六个方面共同建设“津冀两地跨省市异地就医结算”服务平台。下一步将按照京津冀协同发展重大战略部署，深化医疗保险管理合作，实现医疗保险定点医疗机构互认，方便参保人员异地就医;同时，健全异地就医协查机制，相互提供信息核对及协查服务，协同做好双方定点医疗机构的监管。</p>', '2018-03-23', '4', '1');
INSERT INTO `t_medicalplicy` VALUES ('1005', '控制医疗费过快增长 ', '<p><span style=\'background-color: rgb(255, 0, 0);\'>引导转变医疗机构发展模式 促进公立医院改革 </span>　　</p><p><span style=\'text-decoration-line: underline;\'>过快增长的医疗费用，给市民就医造成了不小的经济负担。如何有效控制过快增长的医疗费用，备受关注。市人力社保局总经济师高连欢表示，《意见》明确要继续做好维护参保人员权益、促进公立医院综合改革、支持分级诊疗和“医养结合”等工作，通过医保基金分配、基层医疗机构用药报销、医师多点执业、付费方式改革、信息化建设、建立长期护理保险等具体措施，实现“三医联动”，目标是引导医疗服务机构转变发展模式，控制医疗费用过快增长，切实减轻人民群众医疗负担。</span></p>', '2014-03-26', '5', '1');
INSERT INTO `t_medicalplicy` VALUES ('1006', '制度更加公平', '<p><span style=\'font-weight: bold; font-style: italic;\'>为整合城乡居民基本医保，意见提出“六统一”的要求：统一覆盖范围、统一筹资政策、统一保障待遇、统一医保目录、统一定点管理、统一基金管理。 　　</span></p><h1>这意味着城乡居民医保制度整合后，城乡居民不再受城乡身份的限制，参加统一的城乡居民医保制度，按照统一的政策参保缴费和享受待遇，城乡居民能够更加公平地享有基本医疗保障权益。</h1>', '2014-03-26', '1', '1');

-- ----------------------------
-- Table structure for `t_patient`
-- ----------------------------
DROP TABLE IF EXISTS `t_patient`;
CREATE TABLE `t_patient` (
  `id_card` varchar(20) NOT NULL COMMENT '主键（身份证后六位+注册当天日期）',
  `age` int(11) NOT NULL COMMENT '患者年龄',
  `pname` varchar(100) NOT NULL COMMENT '患者姓名',
  `p_phone` varchar(11) NOT NULL COMMENT '电话',
  `enter_time` date DEFAULT NULL COMMENT '入院时间',
  `out_time` date DEFAULT NULL COMMENT '出院时间',
  `gender` char(1) NOT NULL COMMENT '性别',
  `password` varchar(50) NOT NULL COMMENT '注入密码',
  `flag` char(1) NOT NULL COMMENT '标记',
  PRIMARY KEY (`id_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patient
-- ----------------------------
INSERT INTO `t_patient` VALUES ('09050020180323', '22', '康雨宁', '15855214852', null, null, '男', '15902292107', '1');
INSERT INTO `t_patient` VALUES ('12345620180322', '28', '温庭筠', '16584', '2018-03-22', '2018-03-22', '男', '12', '1');
INSERT INTO `t_patient` VALUES ('14526320180323', '36', '陈娜娜', '15899643364', '2018-03-23', null, '女', '123', '1');
INSERT INTO `t_patient` VALUES ('14785220180323', '32', '牛德仁', '15488964531', null, null, '男', '123', '1');
INSERT INTO `t_patient` VALUES ('15432520180323', '22', '黄明远', '18655331554', null, null, '男', '123', '1');
INSERT INTO `t_patient` VALUES ('35488720180323', '36', '朱瞻基', '13211568845', null, null, '男', '123', '1');
INSERT INTO `t_patient` VALUES ('36445720180323', '12', '甄美丽', '15677998844', null, null, '女', '123', '1');
INSERT INTO `t_patient` VALUES ('36541220180323', '12', '史珍香', '15166548891', null, null, '男', '123', '1');
INSERT INTO `t_patient` VALUES ('36966420180323', '34', '陈晓', '15365452267', null, null, '男', '123', '1');
INSERT INTO `t_patient` VALUES ('45698720180323', '11', '陈建安', '15233661248', null, null, '男', '123', '1');

-- ----------------------------
-- Table structure for `t_plan`
-- ----------------------------
DROP TABLE IF EXISTS `t_plan`;
CREATE TABLE `t_plan` (
  `plan_id` char(6) NOT NULL COMMENT '诊治计划编号',
  `pid_card` varchar(50) DEFAULT NULL COMMENT '患者身份证',
  `doc_phone` varchar(50) DEFAULT NULL COMMENT '医生电话',
  `pm_id` char(6) NOT NULL COMMENT '计划编号',
  `p_time` date DEFAULT NULL COMMENT '计划时间',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_plan
-- ----------------------------
INSERT INTO `t_plan` VALUES ('1000', '02148920180303', '15202223231', '1007', '2018-03-19', '1');
INSERT INTO `t_plan` VALUES ('1001', '12345678912345', '15202223231', '1007', '2018-03-19', '0');
INSERT INTO `t_plan` VALUES ('1002', '16047920180307', '15202223231', '1008', '2018-03-19', '0');
INSERT INTO `t_plan` VALUES ('1003', '21348320180306', '15202223231', '1009', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1004', '2148920180303', '15202223231', '1010', '2018-03-20', '1');
INSERT INTO `t_plan` VALUES ('1005', '12345678912345', '15202223231', '1011', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1006', '12345678912345', '15202223231', '1012', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1007', '12345678912345', '15202223231', '1013', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1008', '12345678912345', '15202223231', '1014', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1009', '12345678912345', '15202223231', '1015', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1010', '12345678912345', '15202223231', '1016', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1011', '12345678912345', '15202223231', '1017', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1012', '12345678912345', '15202223231', '1018', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1013', '12345678912345', '15202223231', '1019', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1014', '16047920180307', '15202223231', '1020', '2018-03-20', '0');
INSERT INTO `t_plan` VALUES ('1015', '12345678912345', '15202223231', '1021', '2018-03-20', '1');
INSERT INTO `t_plan` VALUES ('1016', '12345678912345', '15202223231', '1022', '2018-03-20', '1');
INSERT INTO `t_plan` VALUES ('1017', '16047920180307', '15202223231', '1023', '2018-03-20', '1');
INSERT INTO `t_plan` VALUES ('1018', '12345678912345', '15202223231', '1024', '2018-03-20', '1');
INSERT INTO `t_plan` VALUES ('1019', '12345678912345', '15202223231', '1025', '2018-03-21', '1');
INSERT INTO `t_plan` VALUES ('1020', '24324520180309', '15202223231', '1026', '2018-03-22', '0');
INSERT INTO `t_plan` VALUES ('1021', '16047920180307', '15202223231', '1027', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1022', '12345678912345', '15202223231', '1028', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1023', '16047920180307', '15202223231', '1029', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1024', '21245620180316', '15202223231', '1030', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1025', '21348320180306', '15222006080', '1031', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1026', '21348320180306', '15222006080', '1032', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1027', '12345620180322', '15222006080', '1033', '2018-03-22', '1');
INSERT INTO `t_plan` VALUES ('1028', '9050020180323', '15222006080', '1034', '2018-03-23', '1');
INSERT INTO `t_plan` VALUES ('1029', '14526320180323', '15222006080', '1035', '2018-03-23', '1');

-- ----------------------------
-- Table structure for `t_planmassage`
-- ----------------------------
DROP TABLE IF EXISTS `t_planmassage`;
CREATE TABLE `t_planmassage` (
  `pm_id` char(5) NOT NULL COMMENT '计划内容编号',
  `pmassage` text COMMENT '计划具体内容',
  `flag` char(1) NOT NULL COMMENT '标记',
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_planmassage
-- ----------------------------
INSERT INTO `t_planmassage` VALUES ('1000', '1111', '1');
INSERT INTO `t_planmassage` VALUES ('1001', '2222', '0');
INSERT INTO `t_planmassage` VALUES ('1002', '3333', '1');
INSERT INTO `t_planmassage` VALUES ('1003', '4444', '1');
INSERT INTO `t_planmassage` VALUES ('1004', '5555', '0');
INSERT INTO `t_planmassage` VALUES ('1005', '03/01/2018.CT双螺旋扫描)03/29/2018.局部麻醉)03/29/2018-03/29/2018.神经检测)03/22/2018.术后止痛', '1');
INSERT INTO `t_planmassage` VALUES ('1006', '03/01/2018.CT双螺旋扫描)03/29/2018.局部麻醉)03/29/2018-03/29/2018.神经检测)03/22/2018.术后止痛', '1');
INSERT INTO `t_planmassage` VALUES ('1007', '03/01/2018.CT双螺旋扫描)03/08/2018.局部麻醉,消炎药,骨骼固定,植皮)03/08/2018-03/20/2018.神经检测,伤口消炎,术后止痛,心跳检测)03/01/2018.康复训练,术后止痛,饮食调节', '1');
INSERT INTO `t_planmassage` VALUES ('1008', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查)03/03/2018.局部麻醉,消炎药,骨骼固定,植皮,伤口缝合)03/03/2018-03/15/2018.神经检测,伤口消炎,术后止痛,心跳检测,血液常规检验,肝肾功能检验)03/28/2018.康复训练,术后止痛,饮食调节,药物辅助,反院复查', '1');
INSERT INTO `t_planmassage` VALUES ('1009', '03/01/2018.CT双螺旋扫描)03/09/2018.局部麻醉,骨骼固定,伤口缝合)03/09/2018-03/16/2018.神经检测,伤口消炎,术后止痛,心跳检测,血液常规检验,肝肾功能检验)03/13/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1010', '03/21/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验,肝肾功能检验,心电图检验)03/22/2018.局部麻醉,消炎药,骨骼固定,伤口缝合)03/22/2018-03/30/2018.神经检测,伤口消炎,术后止痛,心跳检测,血液常规检验)04/03/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1011', '03/01/2018.CT双螺旋扫描)03/22/2018.局部麻醉)03/22/2018-03/01/2018.神经检测)03/08/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1012', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验)03/21/2018.局部麻醉,消炎药,骨骼固定,植皮,伤口缝合)03/21/2018-03/27/2018.神经检测,术后止痛,心跳检测,血液常规检验)03/30/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1013', '03/01/2018.CT双螺旋扫描)03/09/2018.局部麻醉)03/09/2018-03/16/2018.神经检测)03/09/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1014', '03/15/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验,肝肾功能检验,心电图检验)03/19/2018.局部麻醉,消炎药,骨骼固定,伤口缝合)03/19/2018-03/24/2018.伤口消炎,术后止痛,心跳检测,血液常规检验,肝肾功能检验)03/30/2018.康复训练,饮食调节,药物辅助,反院复查', '1');
INSERT INTO `t_planmassage` VALUES ('1015', '03/21/2018.CT双螺旋扫描,血型验证,神经系统反射检查,检验C反应蛋白,肝肾功能检验,心电图检验)03/28/2018.局部麻醉,消炎药,骨骼固定,伤口缝合)03/28/2018-04/06/2018.神经检测,伤口消炎,术后止痛,血液常规检验,肝肾功能检验)04/14/2018.康复训练,术后止痛,药物辅助,反院复查', '1');
INSERT INTO `t_planmassage` VALUES ('1016', '03/01/2018.CT双螺旋扫描,血型验证,神经系统反射检查,血液常规检验)03/15/2018.局部麻醉,消炎药,骨骼固定,植皮,伤口缝合)03/15/2018-03/22/2018.伤口消炎,术后止痛,血液常规检验,肝肾功能检验)04/05/2018.康复训练,药物辅助,反院复查', '1');
INSERT INTO `t_planmassage` VALUES ('1017', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查)03/21/2018.局部麻醉,消炎药,植皮)03/21/2018-03/16/2018.神经检测,伤口消炎,术后止痛,心跳检测)03/08/2018.康复训练,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1018', '03/01/2018.CT双螺旋扫描)03/29/2018.局部麻醉)03/29/2018-03/15/2018.神经检测,伤口消炎,术后止痛,心跳检测)03/28/2018.康复训练,饮食调节', '1');
INSERT INTO `t_planmassage` VALUES ('1019', '03/01/2018.血型验证)04/06/2018.局部麻醉)04/06/2018-03/30/2018.神经检测)03/22/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1020', '03/02/2018.CT双螺旋扫描)03/23/2018.局部麻醉)03/23/2018-03/30/2018.伤口消炎)03/22/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1021', '03/01/2018.CT双螺旋扫描)03/23/2018.局部麻醉)03/23/2018-03/27/2018.神经检测)03/30/2018.康复训练,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1022', '03/01/2018.CT双螺旋扫描)03/23/2018.消炎药)03/23/2018-03/30/2018.神经检测)04/06/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1023', '03/02/2018.CT双螺旋扫描)03/30/2018.局部麻醉)03/30/2018-03/29/2018.伤口消炎)03/29/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1024', '03/02/2018.血型验证)03/29/2018.消炎药)03/29/2018-03/23/2018.神经检测)03/23/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1025', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验)03/02/2018.局部麻醉,消炎药,骨骼固定,植皮,伤口缝合)03/02/2018-03/09/2018.神经检测,伤口消炎,术后止痛,心跳检测,血液常规检验)03/28/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1026', '03/01/2018.CT双螺旋扫描,血型验证,神经系统反射检查,检验C反应蛋白)03/22/2018.局部麻醉,消炎药,骨骼固定,植皮,伤口缝合)03/22/2018-03/28/2018.神经检测)03/29/2018.术后止痛', '1');
INSERT INTO `t_planmassage` VALUES ('1027', '03/01/2018.CT双螺旋扫描)03/30/2018.消炎药)03/30/2018-03/29/2018.伤口消炎)03/29/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1028', '03/07/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验,肝肾功能检验,心电图检验)03/08/2018.局部麻醉,消炎药,骨骼固定,植皮)03/08/2018-03/15/2018.神经检测,伤口消炎,术后止痛,心跳检测,血液常规检验)03/28/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1029', '03/01/2018.CT双螺旋扫描,血型验证,神经系统反射检查)03/29/2018.消炎药)03/29/2018-03/21/2018.心跳检测)03/28/2018.饮食调节', '1');
INSERT INTO `t_planmassage` VALUES ('1030', '03/01/2018.CT双螺旋扫描)03/29/2018.局部麻醉)03/29/2018-03/30/2018.术后止痛)04/06/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1031', '03/01/2018.CT双螺旋扫描)03/14/2018.消炎药)03/14/2018-03/17/2018.神经检测,伤口消炎,术后止痛,心跳检测)03/19/2018.康复训练,术后止痛,饮食调节,药物辅助', '1');
INSERT INTO `t_planmassage` VALUES ('1032', '03/02/2018.血型验证)03/29/2018.消炎药)03/29/2018-03/29/2018.伤口消炎)03/23/2018.康复训练', '1');
INSERT INTO `t_planmassage` VALUES ('1033', '03/07/2018.神经系统反射检查)03/01/2018.骨骼固定)03/01/2018-03/07/2018.肝肾功能检验)03/15/2018.术后止痛', '1');
INSERT INTO `t_planmassage` VALUES ('1034', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查,神经系统反射检查,检验C反应蛋白,血液常规检验,肝肾功能检验,心电图检验)03/02/2018.消炎药,骨骼固定,植皮,伤口缝合)03/02/2018-03/23/2018.神经检测,伤口消炎,术后止痛,血液常规检验,肝肾功能检验)03/31/2018.康复训练,术后止痛,饮食调节,药物辅助,反院复查', '1');
INSERT INTO `t_planmassage` VALUES ('1035', '03/01/2018.CT双螺旋扫描,血型验证,肌肉组织检查)03/15/2018.消炎药,骨骼固定,植皮)03/15/2018-03/15/2018.神经检测,术后止痛,心跳检测,血液常规检验)03/29/2018.术后止痛,药物辅助,反院复查', '1');

-- ----------------------------
-- Table structure for `t_pmessage`
-- ----------------------------
DROP TABLE IF EXISTS `t_pmessage`;
CREATE TABLE `t_pmessage` (
  `p_id` char(7) NOT NULL COMMENT '患者留言编号',
  `id_card` varchar(50) NOT NULL COMMENT '患者编号',
  `message` text COMMENT '留言内容',
  `pm_date` datetime DEFAULT NULL COMMENT '留言时间',
  `flag` char(1) DEFAULT NULL COMMENT '标记',
  `doc_phone` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pmessage
-- ----------------------------

-- ----------------------------
-- Table structure for `t_policy`
-- ----------------------------
DROP TABLE IF EXISTS `t_policy`;
CREATE TABLE `t_policy` (
  `p_id` char(15) NOT NULL COMMENT '政策编号',
  `p_title` varchar(100) DEFAULT NULL COMMENT '政策标题',
  `infor` text COMMENT '政策信息',
  `num` char(5) DEFAULT NULL COMMENT '公司编号',
  `time` date DEFAULT NULL COMMENT '发布时间',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_policy
-- ----------------------------
INSERT INTO `t_policy` VALUES ('29910005', '建立专利强制许可药品优先审评审批制度', '在公共健康受到重大威胁情况下，对取得实施强制许可的药品注册申请，予以优先审评审批。公共健康受到重大威胁的情形和启动强制许可的程序，由国家卫生计生委会同有关部门规定。', '5', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('38710007', '探索建立药品专利链接制度', '探索建立药品专利链接制度。为保护专利权人合法权益，降低仿制药专利侵权风险，鼓励仿制药发展，探索建立药品审评审批与药品专利链接制度。药品注册申请人提交注册申请时，应说明涉及的相关专利及其权属状态，并在规定期限内告知相关药品专利权人。专利权存在纠纷的，当事人可以向法院起诉，期间不停止药品技术审评。对通过技术审评的药品，食品药品监管部门根据法院生效判决、裁定或调解书作出是否批准上市的决定；超过一定期限未取得生效判决、裁定或调解书的，食品药品监管部门可批准上市。', '1', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('39910002', '严格药品注射剂审评审批', '严格药品注射剂审评审批。严格控制口服制剂改注射制剂，口服制剂能够满足临床需求的，不批准注射制剂上市。严格控制肌肉注射制剂改静脉注射制剂，肌肉注射制剂能够满足临床需求的，不批准静脉注射制剂上市。大容量注射剂、小容量注射剂、注射用无菌粉针之间互改剂型的申请，无明显临床优势的不予批准。', '2', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('41010006', '建立上市药品目录集', '建立上市药品目录集。新批准上市或通过仿制药质量和疗效一致性评价的药品，载入中国上市药品目录集，注明创新药、改良型新药及与原研药品质量和疗效一致的仿制药等属性，以及有效成份、剂型、规格、上市许可持有人、取得的专利权、试验数据保护期等信息。', '6', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('45610004', '支持中药传承和创新', '支持中药传承和创新。建立完善符合中药特点的注册管理制度和技术评价体系，处理好保持中药传统优势与现代药品研发要求的关系。中药创新药，应突出疗效新的特点；中药改良型新药，应体现临床应用优势；经典名方类中药，按照简化标准审评审批；天然药物，按照现代医学标准审评审批。提高中药临床研究能力，中药注册申请需提交上市价值和资源评估材料，突出以临床价值为导向，促进资源可持续利用。鼓励运用现代科学技术研究开发传统中成药，鼓励发挥中药传统剂型优势研制中药新药，加强中药质量控制。', '5', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('47610003', '实行药品与药用原辅料和包装材料关联审批', '实行药品与药用原辅料和包装材料关联审批。原料药、药用辅料和包装材料在审批药品注册申请时一并审评审批，不再发放原料药批准文号，经关联审评审批的原料药、药用辅料和包装材料及其质量标准在指定平台公示，供相关企业选择。药品上市许可持有人对生产制剂所选用的原料药、药用辅料和包装材料的质量负责。', '5', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('62010008', '开展药品专利期限补偿制度试点', '开展药品专利期限补偿制度试点。选择部分新药开展试点，对因临床试验和审评审批延误上市的时间，给予适当专利期限补偿。', '4', '2018-03-23', '1');
INSERT INTO `t_policy` VALUES ('79910001', '支持罕见病治疗药品医疗器械研发', '支持罕见病治疗药品医疗器械研发。国家卫生计生委或由其委托有关行业协(学)会公布罕见病目录，建立罕见病患者登记制度。罕见病治疗药品医疗器械注册申请人可提出减免临床试验的申请。', '4', '2018-03-23', '1');

-- ----------------------------
-- Table structure for `t_process`
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process` (
  `pro_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '手术名称',
  `type` varchar(20) DEFAULT NULL COMMENT '流程类型',
  `infor` text COMMENT '详细信息',
  `flag` char(1) NOT NULL COMMENT '标记',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_process
-- ----------------------------
INSERT INTO `t_process` VALUES ('1000', '阿斯顿', '住院前', '啊实打实的#啊实打实的', '1');
INSERT INTO `t_process` VALUES ('1001', 'fffff', '入院前', 'xxxxxxx#xxxx#xxxxxxxx#xxxxxxx#xxxxxx#xxxxxxxx#xxxxxx#xxxxxxxx#xxxxxx#xxxxxx#xxxxxx#xxx#xxx#', '1');
INSERT INTO `t_process` VALUES ('1002', 'asdasd', '术前', 'asdasd#asdasd#asdasd#asdasd#', '1');
INSERT INTO `t_process` VALUES ('1003', '爱仕达所多', '术后', '爱仕达所多#爱仕达所多#爱仕达所多#', '1');

-- ----------------------------
-- Table structure for `t_saleplace`
-- ----------------------------
DROP TABLE IF EXISTS `t_saleplace`;
CREATE TABLE `t_saleplace` (
  `s_id` char(6) NOT NULL COMMENT '销售地点编号',
  `pharmacy` varchar(200) DEFAULT NULL COMMENT '销售药店',
  `s_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_saleplace
-- ----------------------------
INSERT INTO `t_saleplace` VALUES ('1', '老百姓大药房', '(022)27682561', '1');
INSERT INTO `t_saleplace` VALUES ('2', '天津市永安堂药店', '(022)26353149', '1');
INSERT INTO `t_saleplace` VALUES ('3', '什方百草堂', '13586947852', '1');
INSERT INTO `t_saleplace` VALUES ('4', '长景山药店', '(022)29757052', '1');

-- ----------------------------
-- Table structure for `t_state`
-- ----------------------------
DROP TABLE IF EXISTS `t_state`;
CREATE TABLE `t_state` (
  `s_id` char(7) NOT NULL,
  `id_card` varchar(50) DEFAULT NULL COMMENT '患者标号',
  `time` date DEFAULT NULL COMMENT '录入时间',
  `role` varchar(100) DEFAULT NULL COMMENT '录入者',
  `total` int(11) DEFAULT NULL COMMENT '根据病情表中各个部位计算出来的总分',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_state
-- ----------------------------
INSERT INTO `t_state` VALUES ('1000', '1882736728288172', '2018-03-14', '陈宇', null, '1');
INSERT INTO `t_state` VALUES ('1001', '1382478528735755', '2018-03-10', '黄伟波', null, '1');
INSERT INTO `t_state` VALUES ('1002', '1837834628648376', '2018-03-08', '李静仁', null, '1');
INSERT INTO `t_state` VALUES ('1003', '1821947984798798', '2018-03-02', '康雨宁', null, '0');
INSERT INTO `t_state` VALUES ('1004', '1874267326473463', '2018-03-01', '牛子寒', null, '0');

-- ----------------------------
-- Table structure for `t_userlevel`
-- ----------------------------
DROP TABLE IF EXISTS `t_userlevel`;
CREATE TABLE `t_userlevel` (
  `u_id` char(6) NOT NULL COMMENT '药品用量编号',
  `type` varchar(200) DEFAULT NULL COMMENT '症状参数',
  `drug` char(6) DEFAULT NULL COMMENT '药品',
  `level` varchar(300) DEFAULT NULL COMMENT '用量',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userlevel
-- ----------------------------

-- ----------------------------
-- Table structure for `t_visit`
-- ----------------------------
DROP TABLE IF EXISTS `t_visit`;
CREATE TABLE `t_visit` (
  `v_id` char(5) NOT NULL COMMENT '出诊编号',
  `doc_phone` varchar(11) NOT NULL COMMENT '医生电话',
  `time` varchar(20) DEFAULT NULL COMMENT '出诊时间',
  `place` varchar(100) DEFAULT NULL COMMENT '出诊地点',
  `flag` char(1) NOT NULL COMMENT '标志',
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_visit
-- ----------------------------
INSERT INTO `t_visit` VALUES ('1000', '15223365599', '周一,周二,周三,周五,周六', '门诊部骨科132', '0');
INSERT INTO `t_visit` VALUES ('1001', '15232684599', '周一,周二,周三,周六,周日', '门诊部骨科133', '1');
INSERT INTO `t_visit` VALUES ('1002', '15222006080', '周一,周三,周四,周五,周日', '门诊部骨科133', '1');
INSERT INTO `t_visit` VALUES ('1003', '13132509283', '周一,周二,周四,周六,周日', '住院部骨科312', '1');
INSERT INTO `t_visit` VALUES ('1004', '15902292107', '周一,周三,周五,周日', '门诊部骨科134', '1');
INSERT INTO `t_visit` VALUES ('1005', '18222611331', '周一,周三,周四,周五,周六', '住院部骨科314', '1');
INSERT INTO `t_visit` VALUES ('1006', '18622342353', '周一,周二,周四,周六,周日', '住院部骨科315', '1');
INSERT INTO `t_visit` VALUES ('1007', '13682033268', '周二,周三,周四,周六,周日', '住院部骨科313', '1');
INSERT INTO `t_visit` VALUES ('1008', '15602223231', '周三,周四,周五,周六,周日', '住院部骨科315', '1');
INSERT INTO `t_visit` VALUES ('1009', '13116554669', '周三,周四,周五,周日', '住院部骨科315', '1');
