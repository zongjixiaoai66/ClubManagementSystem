/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t136`;
CREATE DATABASE IF NOT EXISTS `t136` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t136`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbooteuw84/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbooteuw84/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbooteuw84/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshetuanhuodong`;
CREATE TABLE IF NOT EXISTS `discussshetuanhuodong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='社团活动评论表';

DELETE FROM `discussshetuanhuodong`;
INSERT INTO `discussshetuanhuodong` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-05-18 12:06:11', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-05-18 12:06:11', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-05-18 12:06:11', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-05-18 12:06:11', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-05-18 12:06:11', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-05-18 12:06:11', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussshetuanxinxi`;
CREATE TABLE IF NOT EXISTS `discussshetuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='社团信息评论表';

DELETE FROM `discussshetuanxinxi`;
INSERT INTO `discussshetuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-05-18 12:06:11', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-05-18 12:06:11', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-05-18 12:06:11', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-05-18 12:06:11', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-05-18 12:06:11', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-05-18 12:06:11', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusstushuxinxi`;
CREATE TABLE IF NOT EXISTS `discusstushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息评论表';

DELETE FROM `discusstushuxinxi`;
INSERT INTO `discusstushuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-05-16 02:33:12', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-05-16 02:33:12', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-05-16 02:33:12', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-05-16 02:33:12', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-05-16 02:33:12', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-05-16 02:33:12', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussxinwenxinxi`;
CREATE TABLE IF NOT EXISTS `discussxinwenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息评论表';

DELETE FROM `discussxinwenxinxi`;
INSERT INTO `discussxinwenxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-05-18 12:06:11', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-05-18 12:06:11', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-05-18 12:06:11', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-05-18 12:06:11', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-05-18 12:06:11', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-05-18 12:06:11', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `huodongbaoming`;
CREATE TABLE IF NOT EXISTS `huodongbaoming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `baomingshijian` datetime NOT NULL COMMENT '报名时间',
  `baomingneirong` varchar(200) NOT NULL COMMENT '报名内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='活动报名';

DELETE FROM `huodongbaoming`;
INSERT INTO `huodongbaoming` (`id`, `addtime`, `huodongmingcheng`, `huodongdidian`, `zhanghao`, `baomingshijian`, `baomingneirong`, `yonghuming`, `xingming`, `banji`, `zhuanye`, `shouji`, `sfsh`, `shhf`) VALUES
	(61, '2021-05-18 12:06:11', '活动名称1', '活动地点1', '账号1', '2021-05-18 20:06:11', '报名内容1', '用户名1', '姓名1', '班级1', '专业1', '手机1', '是', ''),
	(62, '2021-05-18 12:06:11', '活动名称2', '活动地点2', '账号2', '2021-05-18 20:06:11', '报名内容2', '用户名2', '姓名2', '班级2', '专业2', '手机2', '是', ''),
	(63, '2021-05-18 12:06:11', '活动名称3', '活动地点3', '账号3', '2021-05-18 20:06:11', '报名内容3', '用户名3', '姓名3', '班级3', '专业3', '手机3', '是', ''),
	(64, '2021-05-18 12:06:11', '活动名称4', '活动地点4', '账号4', '2021-05-18 20:06:11', '报名内容4', '用户名4', '姓名4', '班级4', '专业4', '手机4', '是', ''),
	(65, '2021-05-18 12:06:11', '活动名称5', '活动地点5', '账号5', '2021-05-18 20:06:11', '报名内容5', '用户名5', '姓名5', '班级5', '专业5', '手机5', '是', ''),
	(66, '2021-05-18 12:06:11', '活动名称6', '活动地点6', '账号6', '2021-05-18 20:06:11', '报名内容6', '用户名6', '姓名6', '班级6', '专业6', '手机6', '是', '');

DROP TABLE IF EXISTS `jiankangdaka`;
CREATE TABLE IF NOT EXISTS `jiankangdaka` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiankangqingkuang` varchar(200) DEFAULT NULL COMMENT '健康情况',
  `jiechushi` varchar(200) DEFAULT NULL COMMENT '接触史',
  `jinritiwen` varchar(200) DEFAULT NULL COMMENT '今日体温',
  `peidaikouzhao` varchar(200) DEFAULT NULL COMMENT '佩戴口罩',
  `dakariqi` datetime DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='健康打卡';

DELETE FROM `jiankangdaka`;
INSERT INTO `jiankangdaka` (`id`, `addtime`, `zhanghao`, `xingming`, `shouji`, `zhaopian`, `jiankangqingkuang`, `jiechushi`, `jinritiwen`, `peidaikouzhao`, `dakariqi`) VALUES
	(31, '2021-05-16 02:33:12', '账号1', '姓名1', '手机1', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian1.jpg', '健康', '是', '今日体温1', '是', '2021-05-16 10:33:12'),
	(32, '2021-05-16 02:33:12', '账号2', '姓名2', '手机2', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian2.jpg', '健康', '是', '今日体温2', '是', '2021-05-16 10:33:12'),
	(33, '2021-05-16 02:33:12', '账号3', '姓名3', '手机3', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian3.jpg', '健康', '是', '今日体温3', '是', '2021-05-16 10:33:12'),
	(34, '2021-05-16 02:33:12', '账号4', '姓名4', '手机4', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian4.jpg', '健康', '是', '今日体温4', '是', '2021-05-16 10:33:12'),
	(35, '2021-05-16 02:33:12', '账号5', '姓名5', '手机5', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian5.jpg', '健康', '是', '今日体温5', '是', '2021-05-16 10:33:12'),
	(36, '2021-05-16 02:33:12', '账号6', '姓名6', '手机6', 'http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian6.jpg', '健康', '是', '今日体温6', '是', '2021-05-16 10:33:12');

DROP TABLE IF EXISTS `jiarushetuan`;
CREATE TABLE IF NOT EXISTS `jiarushetuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiaruliyou` varchar(200) DEFAULT NULL COMMENT '加入理由',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='加入社团';

DELETE FROM `jiarushetuan`;
INSERT INTO `jiarushetuan` (`id`, `addtime`, `shetuanmingcheng`, `zhanghao`, `jiaruliyou`, `shenqingriqi`, `yonghuming`, `xingming`, `banji`, `zhuanye`, `shouji`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-18 12:06:11', '社团名称1', '账号1', '加入理由1', '2021-05-18', '用户名1', '姓名1', '班级1', '专业1', '手机1', '是', ''),
	(42, '2021-05-18 12:06:11', '社团名称2', '账号2', '加入理由2', '2021-05-18', '用户名2', '姓名2', '班级2', '专业2', '手机2', '是', ''),
	(43, '2021-05-18 12:06:11', '社团名称3', '账号3', '加入理由3', '2021-05-18', '用户名3', '姓名3', '班级3', '专业3', '手机3', '是', ''),
	(44, '2021-05-18 12:06:11', '社团名称4', '账号4', '加入理由4', '2021-05-18', '用户名4', '姓名4', '班级4', '专业4', '手机4', '是', ''),
	(45, '2021-05-18 12:06:11', '社团名称5', '账号5', '加入理由5', '2021-05-18', '用户名5', '姓名5', '班级5', '专业5', '手机5', '是', ''),
	(46, '2021-05-18 12:06:11', '社团名称6', '账号6', '加入理由6', '2021-05-18', '用户名6', '姓名6', '班级6', '专业6', '手机6', '是', '');

DROP TABLE IF EXISTS `jingfeixinxi`;
CREATE TABLE IF NOT EXISTS `jingfeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jingfeijine` int NOT NULL COMMENT '经费金额',
  `shenqingliyou` longtext COMMENT '申请理由',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='经费信息';

DELETE FROM `jingfeixinxi`;
INSERT INTO `jingfeixinxi` (`id`, `addtime`, `biaoti`, `jingfeijine`, `shenqingliyou`, `fujian`, `shenqingriqi`, `zhanghao`, `shezhangxingming`, `shetuanmingcheng`, `shouji`, `sfsh`, `shhf`, `ispay`) VALUES
	(71, '2021-05-18 12:06:11', '标题1', 1, '申请理由1', '', '2021-05-18', '账号1', '社长姓名1', '社团名称1', '手机1', '是', '', '未支付'),
	(72, '2021-05-18 12:06:11', '标题2', 2, '申请理由2', '', '2021-05-18', '账号2', '社长姓名2', '社团名称2', '手机2', '是', '', '未支付'),
	(73, '2021-05-18 12:06:11', '标题3', 3, '申请理由3', '', '2021-05-18', '账号3', '社长姓名3', '社团名称3', '手机3', '是', '', '未支付'),
	(74, '2021-05-18 12:06:11', '标题4', 4, '申请理由4', '', '2021-05-18', '账号4', '社长姓名4', '社团名称4', '手机4', '是', '', '未支付'),
	(75, '2021-05-18 12:06:11', '标题5', 5, '申请理由5', '', '2021-05-18', '账号5', '社长姓名5', '社团名称5', '手机5', '是', '', '未支付'),
	(76, '2021-05-18 12:06:11', '标题6', 6, '申请理由6', '', '2021-05-18', '账号6', '社长姓名6', '社团名称6', '手机6', '是', '', '未支付');

DROP TABLE IF EXISTS `jinguanyuyue`;
CREATE TABLE IF NOT EXISTS `jinguanyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jinguanriqi` datetime DEFAULT NULL COMMENT '进馆日期',
  `renshu` int DEFAULT NULL COMMENT '人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='进馆预约';

DELETE FROM `jinguanyuyue`;
INSERT INTO `jinguanyuyue` (`id`, `addtime`, `tushuguanmingcheng`, `jinguanriqi`, `renshu`, `beizhu`, `tupian`) VALUES
	(41, '2021-05-16 02:33:12', '图书馆名称1', '2021-05-16 10:33:12', 1, '备注1', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian1.jpg'),
	(42, '2021-05-16 02:33:12', '图书馆名称2', '2021-05-16 10:33:12', 2, '备注2', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian2.jpg'),
	(43, '2021-05-16 02:33:12', '图书馆名称3', '2021-05-16 10:33:12', 3, '备注3', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian3.jpg'),
	(44, '2021-05-16 02:33:12', '图书馆名称4', '2021-05-16 10:33:12', 4, '备注4', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian4.jpg'),
	(45, '2021-05-16 02:33:12', '图书馆名称5', '2021-05-16 10:33:12', 5, '备注5', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian5.jpg'),
	(46, '2021-05-16 02:33:12', '图书馆名称6', '2021-05-16 10:33:12', 6, '备注6', 'http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian6.jpg');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='新书资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-05-16 02:33:12', '标题1', '简介1', 'http://localhost:8080/springbootp5hkd/upload/news_picture1.jpg', '内容1'),
	(122, '2021-05-16 02:33:12', '标题2', '简介2', 'http://localhost:8080/springbootp5hkd/upload/news_picture2.jpg', '内容2'),
	(123, '2021-05-16 02:33:12', '标题3', '简介3', 'http://localhost:8080/springbootp5hkd/upload/news_picture3.jpg', '内容3'),
	(124, '2021-05-16 02:33:12', '标题4', '简介4', 'http://localhost:8080/springbootp5hkd/upload/news_picture4.jpg', '内容4'),
	(125, '2021-05-16 02:33:12', '标题5', '简介5', 'http://localhost:8080/springbootp5hkd/upload/news_picture5.jpg', '内容5'),
	(126, '2021-05-16 02:33:12', '标题6', '简介6', 'http://localhost:8080/springbootp5hkd/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `shetuanhuodong`;
CREATE TABLE IF NOT EXISTS `shetuanhuodong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='社团活动';

DELETE FROM `shetuanhuodong`;
INSERT INTO `shetuanhuodong` (`id`, `addtime`, `huodongmingcheng`, `shetuanmingcheng`, `huodongtupian`, `kaishishijian`, `jieshushijian`, `huodongdidian`, `zhanghao`, `shouji`, `huodongxiangqing`) VALUES
	(51, '2021-05-18 12:06:11', '活动名称1', '社团名称1', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian1.jpg', '2021-05-18', '2021-05-18', '活动地点1', '账号1', '手机1', '活动详情1'),
	(52, '2021-05-18 12:06:11', '活动名称2', '社团名称2', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian2.jpg', '2021-05-18', '2021-05-18', '活动地点2', '账号2', '手机2', '活动详情2'),
	(53, '2021-05-18 12:06:11', '活动名称3', '社团名称3', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian3.jpg', '2021-05-18', '2021-05-18', '活动地点3', '账号3', '手机3', '活动详情3'),
	(54, '2021-05-18 12:06:11', '活动名称4', '社团名称4', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian4.jpg', '2021-05-18', '2021-05-18', '活动地点4', '账号4', '手机4', '活动详情4'),
	(55, '2021-05-18 12:06:11', '活动名称5', '社团名称5', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian5.jpg', '2021-05-18', '2021-05-18', '活动地点5', '账号5', '手机5', '活动详情5'),
	(56, '2021-05-18 12:06:11', '活动名称6', '社团名称6', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian6.jpg', '2021-05-18', '2021-05-18', '活动地点6', '账号6', '手机6', '活动详情6');

DROP TABLE IF EXISTS `shetuanxinxi`;
CREATE TABLE IF NOT EXISTS `shetuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shetuanrenshu` varchar(200) DEFAULT NULL COMMENT '社团人数',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shetuanjianjie` longtext COMMENT '社团简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='社团信息';

DELETE FROM `shetuanxinxi`;
INSERT INTO `shetuanxinxi` (`id`, `addtime`, `shetuanmingcheng`, `tupian`, `shetuanrenshu`, `chuangjianshijian`, `zhanghao`, `shezhangxingming`, `youxiang`, `shouji`, `shetuanjianjie`) VALUES
	(31, '2021-05-18 12:06:11', '社团名称1', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian1.jpg', '社团人数1', '2021-05-18', '账号1', '社长姓名1', '邮箱1', '手机1', '社团简介1'),
	(32, '2021-05-18 12:06:11', '社团名称2', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian2.jpg', '社团人数2', '2021-05-18', '账号2', '社长姓名2', '邮箱2', '手机2', '社团简介2'),
	(33, '2021-05-18 12:06:11', '社团名称3', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian3.jpg', '社团人数3', '2021-05-18', '账号3', '社长姓名3', '邮箱3', '手机3', '社团简介3'),
	(34, '2021-05-18 12:06:11', '社团名称4', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian4.jpg', '社团人数4', '2021-05-18', '账号4', '社长姓名4', '邮箱4', '手机4', '社团简介4'),
	(35, '2021-05-18 12:06:11', '社团名称5', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian5.jpg', '社团人数5', '2021-05-18', '账号5', '社长姓名5', '邮箱5', '手机5', '社团简介5'),
	(36, '2021-05-18 12:06:11', '社团名称6', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian6.jpg', '社团人数6', '2021-05-18', '账号6', '社长姓名6', '邮箱6', '手机6', '社团简介6');

DROP TABLE IF EXISTS `shezhang`;
CREATE TABLE IF NOT EXISTS `shezhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shezhangxingming` varchar(200) NOT NULL COMMENT '社长姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='社长';

DELETE FROM `shezhang`;
INSERT INTO `shezhang` (`id`, `addtime`, `zhanghao`, `mima`, `shezhangxingming`, `touxiang`, `xingbie`, `shetuanmingcheng`, `shouji`, `youxiang`) VALUES
	(21, '2021-05-18 12:06:11', '社长1', '123456', '社长姓名1', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang1.jpg', '男', '社团名称1', '13823888881', '773890001@qq.com'),
	(22, '2021-05-18 12:06:11', '社长2', '123456', '社长姓名2', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang2.jpg', '男', '社团名称2', '13823888882', '773890002@qq.com'),
	(23, '2021-05-18 12:06:11', '社长3', '123456', '社长姓名3', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang3.jpg', '男', '社团名称3', '13823888883', '773890003@qq.com'),
	(24, '2021-05-18 12:06:11', '社长4', '123456', '社长姓名4', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang4.jpg', '男', '社团名称4', '13823888884', '773890004@qq.com'),
	(25, '2021-05-18 12:06:11', '社长5', '123456', '社长姓名5', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang5.jpg', '男', '社团名称5', '13823888885', '773890005@qq.com'),
	(26, '2021-05-18 12:06:11', '社长6', '123456', '社长姓名6', 'http://localhost:8080/springbooteuw84/upload/shezhang_touxiang6.jpg', '男', '社团名称6', '13823888886', '773890006@qq.com');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1713446177477 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1713446165577, '2024-04-18 13:16:05', 11, 31, 'shetuanxinxi', '社团名称1', 'http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian1.jpg'),
	(1713446173931, '2024-04-18 13:16:13', 11, 52, 'shetuanhuodong', '活动名称2', 'http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian2.jpg'),
	(1713446177476, '2024-04-18 13:16:17', 11, 82, 'xinwenxinxi', '新闻标题2', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '11lmzcjvcjvnbmbiwp5iy82ncsrf4xj3', '2021-05-18 12:08:07', '2024-04-18 14:14:35'),
	(2, 11, '1', 'yonghu', '用户', 'w6qejcde1u88h9ypvgekxpkv2oztqzot', '2021-05-18 12:08:22', '2024-04-18 14:15:56'),
	(3, 21, '1', 'shezhang', '社长', '3vd1l2twcexk3s1tg59mzz8flsn32wle', '2021-05-18 12:08:32', '2024-04-18 14:15:40');

DROP TABLE IF EXISTS `tushufenlei`;
CREATE TABLE IF NOT EXISTS `tushufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='图书分类';

DELETE FROM `tushufenlei`;
INSERT INTO `tushufenlei` (`id`, `addtime`, `tushufenlei`) VALUES
	(61, '2021-05-16 02:33:12', '图书分类1'),
	(62, '2021-05-16 02:33:12', '图书分类2'),
	(63, '2021-05-16 02:33:12', '图书分类3'),
	(64, '2021-05-16 02:33:12', '图书分类4'),
	(65, '2021-05-16 02:33:12', '图书分类5'),
	(66, '2021-05-16 02:33:12', '图书分类6');

DROP TABLE IF EXISTS `tushuxinxi`;
CREATE TABLE IF NOT EXISTS `tushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息';

DELETE FROM `tushuxinxi`;
INSERT INTO `tushuxinxi` (`id`, `addtime`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `tupian`, `zuozhe`, `chubanshe`, `xiangqing`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(71, '2021-05-16 02:33:12', '图书编号1', '图书名称1', '图书分类1', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian1.jpg', '作者1', '出版社1', '详情1', 1, 1, '2021-05-16 10:33:12', 1),
	(72, '2021-05-16 02:33:12', '图书编号2', '图书名称2', '图书分类2', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian2.jpg', '作者2', '出版社2', '详情2', 2, 2, '2021-05-16 10:33:12', 2),
	(73, '2021-05-16 02:33:12', '图书编号3', '图书名称3', '图书分类3', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian3.jpg', '作者3', '出版社3', '详情3', 3, 3, '2021-05-16 10:33:12', 3),
	(74, '2021-05-16 02:33:12', '图书编号4', '图书名称4', '图书分类4', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian4.jpg', '作者4', '出版社4', '详情4', 4, 4, '2021-05-16 10:33:12', 4),
	(75, '2021-05-16 02:33:12', '图书编号5', '图书名称5', '图书分类5', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian5.jpg', '作者5', '出版社5', '详情5', 5, 5, '2021-05-16 10:33:12', 5),
	(76, '2021-05-16 02:33:12', '图书编号6', '图书名称6', '图书分类6', 'http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian6.jpg', '作者6', '出版社6', '详情6', 6, 6, '2021-05-16 10:33:12', 6);

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-18 12:06:11');

DROP TABLE IF EXISTS `wenxintishi`;
CREATE TABLE IF NOT EXISTS `wenxintishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext NOT NULL COMMENT '内容',
  `shijian` datetime NOT NULL COMMENT '时间',
  `fengmian` varchar(200) NOT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='温馨提示';

DELETE FROM `wenxintishi`;
INSERT INTO `wenxintishi` (`id`, `addtime`, `biaoti`, `neirong`, `shijian`, `fengmian`) VALUES
	(101, '2021-05-16 02:33:12', '标题1', '内容1', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian1.jpg'),
	(102, '2021-05-16 02:33:12', '标题2', '内容2', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian2.jpg'),
	(103, '2021-05-16 02:33:12', '标题3', '内容3', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian3.jpg'),
	(104, '2021-05-16 02:33:12', '标题4', '内容4', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian4.jpg'),
	(105, '2021-05-16 02:33:12', '标题5', '内容5', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian5.jpg'),
	(106, '2021-05-16 02:33:12', '标题6', '内容6', '2021-05-16 10:33:12', 'http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian6.jpg');

DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE IF NOT EXISTS `xinwenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `xinwenxinxi`;
INSERT INTO `xinwenxinxi` (`id`, `addtime`, `xinwenbiaoti`, `leibie`, `tupian`, `neirong`, `faburiqi`, `zhanghao`, `shetuanmingcheng`, `clicknum`) VALUES
	(81, '2021-05-18 12:06:11', '新闻标题1', '类别1', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian1.jpg', '内容1', '2021-05-18', '账号1', '社团名称1', 2),
	(82, '2021-05-18 12:06:11', '新闻标题2', '类别2', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian2.jpg', '内容2', '2021-05-18', '账号2', '社团名称2', 4),
	(83, '2021-05-18 12:06:11', '新闻标题3', '类别3', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian3.jpg', '内容3', '2021-05-18', '账号3', '社团名称3', 4),
	(84, '2021-05-18 12:06:11', '新闻标题4', '类别4', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian4.jpg', '内容4', '2021-05-18', '账号4', '社团名称4', 4),
	(85, '2021-05-18 12:06:11', '新闻标题5', '类别5', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian5.jpg', '内容5', '2021-05-18', '账号5', '社团名称5', 5),
	(86, '2021-05-18 12:06:11', '新闻标题6', '类别6', 'http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian6.jpg', '内容6', '2021-05-18', '账号6', '社团名称6', 6);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `banji`, `zhuanye`, `shouji`, `youxiang`) VALUES
	(11, '2021-05-18 12:06:11', '用户1', '123456', '姓名1', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang1.jpg', '男', '班级1', '专业1', '13823888881', '773890001@qq.com'),
	(12, '2021-05-18 12:06:11', '用户2', '123456', '姓名2', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang2.jpg', '男', '班级2', '专业2', '13823888882', '773890002@qq.com'),
	(13, '2021-05-18 12:06:11', '用户3', '123456', '姓名3', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang3.jpg', '男', '班级3', '专业3', '13823888883', '773890003@qq.com'),
	(14, '2021-05-18 12:06:11', '用户4', '123456', '姓名4', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang4.jpg', '男', '班级4', '专业4', '13823888884', '773890004@qq.com'),
	(15, '2021-05-18 12:06:11', '用户5', '123456', '姓名5', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang5.jpg', '男', '班级5', '专业5', '13823888885', '773890005@qq.com'),
	(16, '2021-05-18 12:06:11', '用户6', '123456', '姓名6', 'http://localhost:8080/springbooteuw84/upload/yonghu_touxiang6.jpg', '男', '班级6', '专业6', '13823888886', '773890006@qq.com');

DROP TABLE IF EXISTS `yonghuyuyue`;
CREATE TABLE IF NOT EXISTS `yonghuyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jinguanriqi` varchar(200) DEFAULT NULL COMMENT '进馆日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `renshu` varchar(200) DEFAULT NULL COMMENT '人数',
  `daodashijian` varchar(200) DEFAULT NULL COMMENT '到达时间',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='用户预约';

DELETE FROM `yonghuyuyue`;
INSERT INTO `yonghuyuyue` (`id`, `addtime`, `yuyuebianhao`, `tushuguanmingcheng`, `jinguanriqi`, `tupian`, `zhanghao`, `xingming`, `renshu`, `daodashijian`, `shijian`) VALUES
	(51, '2021-05-16 02:33:12', '预约编号1', '图书馆名称1', '进馆日期1', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian1.jpg', '账号1', '姓名1', '1', '上午', '2021-05-16 10:33:12'),
	(52, '2021-05-16 02:33:12', '预约编号2', '图书馆名称2', '进馆日期2', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian2.jpg', '账号2', '姓名2', '1', '上午', '2021-05-16 10:33:12'),
	(53, '2021-05-16 02:33:12', '预约编号3', '图书馆名称3', '进馆日期3', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian3.jpg', '账号3', '姓名3', '1', '上午', '2021-05-16 10:33:12'),
	(54, '2021-05-16 02:33:12', '预约编号4', '图书馆名称4', '进馆日期4', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian4.jpg', '账号4', '姓名4', '1', '上午', '2021-05-16 10:33:12'),
	(55, '2021-05-16 02:33:12', '预约编号5', '图书馆名称5', '进馆日期5', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian5.jpg', '账号5', '姓名5', '1', '上午', '2021-05-16 10:33:12'),
	(56, '2021-05-16 02:33:12', '预约编号6', '图书馆名称6', '进馆日期6', 'http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian6.jpg', '账号6', '姓名6', '1', '上午', '2021-05-16 10:33:12');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangongzhanghao` (`yuangongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangongzhanghao`, `mima`, `yuangongxingming`, `xingbie`, `shouji`, `shengri`, `zhuzhi`, `zhaopian`) VALUES
	(21, '2021-05-16 02:33:12', '员工1', '123456', '员工姓名1', '男', '13823888881', '2021-05-16', '住址1', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian1.jpg'),
	(22, '2021-05-16 02:33:12', '员工2', '123456', '员工姓名2', '男', '13823888882', '2021-05-16', '住址2', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian2.jpg'),
	(23, '2021-05-16 02:33:12', '员工3', '123456', '员工姓名3', '男', '13823888883', '2021-05-16', '住址3', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian3.jpg'),
	(24, '2021-05-16 02:33:12', '员工4', '123456', '员工姓名4', '男', '13823888884', '2021-05-16', '住址4', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian4.jpg'),
	(25, '2021-05-16 02:33:12', '员工5', '123456', '员工姓名5', '男', '13823888885', '2021-05-16', '住址5', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian5.jpg'),
	(26, '2021-05-16 02:33:12', '员工6', '123456', '员工姓名6', '男', '13823888886', '2021-05-16', '住址6', 'http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian6.jpg');

DROP TABLE IF EXISTS `yuyueguihai`;
CREATE TABLE IF NOT EXISTS `yuyueguihai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guihaibianhao` varchar(200) DEFAULT NULL COMMENT '归还编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guihaibianhao` (`guihaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='预约归还';

DELETE FROM `yuyueguihai`;
INSERT INTO `yuyueguihai` (`id`, `addtime`, `guihaibianhao`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `zuozhe`, `tupian`, `zhanghao`, `xingming`, `shouji`, `guihaishijian`, `sfsh`, `shhf`) VALUES
	(91, '2021-05-16 02:33:12', '归还编号1', '图书编号1', '图书名称1', '图书分类1', '作者1', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian1.jpg', '账号1', '姓名1', '手机1', '2021-05-16 10:33:12', '是', ''),
	(92, '2021-05-16 02:33:12', '归还编号2', '图书编号2', '图书名称2', '图书分类2', '作者2', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian2.jpg', '账号2', '姓名2', '手机2', '2021-05-16 10:33:12', '是', ''),
	(93, '2021-05-16 02:33:12', '归还编号3', '图书编号3', '图书名称3', '图书分类3', '作者3', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian3.jpg', '账号3', '姓名3', '手机3', '2021-05-16 10:33:12', '是', ''),
	(94, '2021-05-16 02:33:12', '归还编号4', '图书编号4', '图书名称4', '图书分类4', '作者4', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian4.jpg', '账号4', '姓名4', '手机4', '2021-05-16 10:33:12', '是', ''),
	(95, '2021-05-16 02:33:12', '归还编号5', '图书编号5', '图书名称5', '图书分类5', '作者5', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian5.jpg', '账号5', '姓名5', '手机5', '2021-05-16 10:33:12', '是', ''),
	(96, '2021-05-16 02:33:12', '归还编号6', '图书编号6', '图书名称6', '图书分类6', '作者6', 'http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian6.jpg', '账号6', '姓名6', '手机6', '2021-05-16 10:33:12', '是', '');

DROP TABLE IF EXISTS `yuyuejieyue`;
CREATE TABLE IF NOT EXISTS `yuyuejieyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) DEFAULT NULL COMMENT '借阅编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jieyueshijian` datetime DEFAULT NULL COMMENT '借阅时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuebianhao` (`jieyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='预约借阅';

DELETE FROM `yuyuejieyue`;
INSERT INTO `yuyuejieyue` (`id`, `addtime`, `jieyuebianhao`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `zuozhe`, `tupian`, `zhanghao`, `xingming`, `shouji`, `jieyueshijian`, `sfsh`, `shhf`) VALUES
	(81, '2021-05-16 02:33:12', '借阅编号1', '图书编号1', '图书名称1', '图书分类1', '作者1', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian1.jpg', '账号1', '姓名1', '手机1', '2021-05-16 10:33:12', '是', ''),
	(82, '2021-05-16 02:33:12', '借阅编号2', '图书编号2', '图书名称2', '图书分类2', '作者2', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian2.jpg', '账号2', '姓名2', '手机2', '2021-05-16 10:33:12', '是', ''),
	(83, '2021-05-16 02:33:12', '借阅编号3', '图书编号3', '图书名称3', '图书分类3', '作者3', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian3.jpg', '账号3', '姓名3', '手机3', '2021-05-16 10:33:12', '是', ''),
	(84, '2021-05-16 02:33:12', '借阅编号4', '图书编号4', '图书名称4', '图书分类4', '作者4', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian4.jpg', '账号4', '姓名4', '手机4', '2021-05-16 10:33:12', '是', ''),
	(85, '2021-05-16 02:33:12', '借阅编号5', '图书编号5', '图书名称5', '图书分类5', '作者5', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian5.jpg', '账号5', '姓名5', '手机5', '2021-05-16 10:33:12', '是', ''),
	(86, '2021-05-16 02:33:12', '借阅编号6', '图书编号6', '图书名称6', '图书分类6', '作者6', 'http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian6.jpg', '账号6', '姓名6', '手机6', '2021-05-16 10:33:12', '是', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
