/*设置客户端连接服务器端编码*/
SET NAMES UTF8;
/*先丢弃数据库，如果存在*/
DROP DATABASE IF EXISTS jq;
/*创建新的数据库并设置存储的编码*/
CREATE DATABASE jq CHARSET=UTF8;
/*进入数据库*/
USE jq;
/*创建保存用户信息的表jq_user()*/
 CREATE TABLE jq_user( 
    uid SMALLINT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(16),
    sex BOOL, /* 1--->男；0--->女 */
    userType VARCHAR(16),
    idcard INT(18),
    phone INT(11),
    carNum CHAR(7),
    currentAddress VARCHAR(64)
    );
/*插入用户信息数据*/
  INSERT INTO jq_user VALUES(NULL,'王永发',1,'司机',610525197706126835,13465318765,'陕E88636','渭南市澄城县王庄村');
  INSERT INTO jq_user VALUES(NULL,'赵启',1,'中间人',610525197706126835,13465318765,NUll,'渭南市蒲城县县魏家村');
  INSERT INTO jq_user VALUES(NULL,'王宏刚',1,'车主',610525197706126835,13465318765,'陕A67356','渭南市大荔县党家村');
  INSERT INTO jq_user VALUES(NULL,'刘海',1,'收货人',610525197706126835,13465318765,NUll,'渭南市大荔县潘家庄');
  INSERT INTO jq_user VALUES(NULL,'李瑞红',1,'中间人',610525197706126805,13465318765,NUll,'渭南市澄城县县城西六路');
  INSERT INTO jq_user VALUES(NULL,'刘富成',1,'司机',610525197706126835,13465318765,'陕A67356','渭南市澄城县交道镇');
  INSERT INTO jq_user VALUES(NULL,'张学友',1,'货主',610525197706126835,13465318765,NULL,'渭南市澄城县王庄村');
  INSERT INTO jq_user VALUES(NULL,'钱万贯',1,'货主',610525197706126835,13465318765,NUll,'渭南市澄城县王庄村');
  INSERT INTO jq_user VALUES(NUll,'孙子扬',1,'司机',610525197706126835,13465318765,'陕A67356','渭南市澄城县寺前镇');
  INSERT INTO jq_user VALUES(NULL,'周小红',0,'收货人',610525198306126865,13465318765,NUll,'渭南市富平县');
/*创建页面基本信息表jq_jiben()
 CREATE TABLE jiben(
    logo  ,
    logoTitle  ,
    logoText  ,
    contactNumber ,
    promptText
 );
 #插入页面基本信息
  INSERT INTO jq_site_info VALUES(NULL,'王永发',1,610525197706126835,13465318765,'陕E88636','渭南市澄城县王庄村');
*/
/*创建轮播图表jq_lunbo()*/
 CREATE TABLE jq_lunbo(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(128)
);
 #向轮播图表中插入数据
  INSERT INTO jq_lunbo VALUES
(NULL, 'img/index/banner1.png','product_details.html?lid=28'),
(NULL, 'img/index/banner2.png','product_details.html?lid=19'),
(NULL, 'img/index/banner3.png','lookforward.html'),
(NULL, 'img/index/banner4.png','lookforward.html');
/*创建找路线信息表jq_zhaoxianlu()*/
 CREATE TABLE jq_zhaoxianlu(
    chufadi VARCHAR(64),
    mudidi VARCHAR(64),
    zhonghuo DECIMAL(5,2),
    qinghuo DECIMAL(5,2),
    yunshuleixing VARCHAR(4),
    chechang INT(2),
    zaizhong DECIMAL(6,2),   
    zhuangtai VARCHAR(4)
 );
  /*向找路线信息表中插入数据*/
  INSERT INTO jq_zhaoxianlu VALUES(
    '西城区','河西区', 12.00,20.00,'专线',12,10.00,'已发车');
  INSERT INTO jq_zhaoxianlu VALUES(
    '盱眙县','丹徒区', 20.00,20.00,'专线',30,30.00,'空车待定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '惠山区','余杭区', 20.00,20.00,'专线',20,6.00,'预定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '姜堰市','上海市', 300.00,260.00,'不限',6,10.00,'预定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '姜堰市','上海市', 320.00,120.00,'不限',6,10.00,'预定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '双峰县','南郊区', 100.00,100.00,'专线',10,1000.00,'预定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '姜堰市','江岸区', 450.00,300.00,'不限',9,20.00,'预定');
  INSERT INTO jq_zhaoxianlu VALUES(
    '东台市','高淳县', 90.00,70.00,'专线',9,25.00,'预定');
   INSERT INTO jq_zhaoxianlu VALUES(
    '大丰市','海珠区', 200.00,100.00,'不限',9,25.00,'预定');
   INSERT INTO jq_zhaoxianlu VALUES(
    '大丰市','卢湾区', 150.00,90.00,'不限',9,25.00,'预定');
 /*创建找货源信息表jq_zhaohuoyuan()*/
 CREATE TABLE jq_zhaohuoyuan(
    mudidi VARCHAR(64),
    chufadi VARCHAR(64),
    huowuming VARCHAR(16),
    yunjia DECIMAL(7,2),
    zhongliang INT,
    youxiaoqi DATE,
    gengxinriqi DATE,   
    zhuangtai VARCHAR(4)
 );
  /*向找货源信息表中插入数据*/
  INSERT INTO jq_zhaohuoyuan VALUES(
    '西城区','河西区', '五金螺丝',10.00,10,'2019-03-31','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '兴化市','金乡县','水带',2100.00,20,'2019-03-27','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '惠山区','余杭区','阀门',4800.00,20,'2019-03-20','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '姜堰市','上海市', '配件',2500.00,17,'2019-03-19','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '姜堰市','上海市', '苹果',10.00,18,'2019-03-18','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '双峰县','南郊区', '饮料',10.00,15,'2019-03-17','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '姜堰市','江岸区', '方便面',10.00,10,'2019-03-20','2019-03-22','抢单');
  INSERT INTO jq_zhaohuoyuan VALUES(
    '东台市','高淳县', '衣服',10.00,10,'2019-03-20','2019-03-22','抢单');
   INSERT INTO jq_zhaohuoyuan VALUES(
    '大丰市','海珠区','文具',500.00,7,'2019-03-19','2019-03-22','抢单');
   INSERT INTO jq_zhaohuoyuan VALUES(
    '大丰市','卢湾区', '牛',2500.00,12,'2019-03-17','2019-03-20','抢单');





