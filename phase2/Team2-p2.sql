﻿create table category (
	major varchar(30) not null,
	sub varchar(30) not null,
	catid int not null,
	primary key (catid));

create table provider (
	Pid int not null,
	Pname varchar(20) not null,
	Plocation varchar(20) not null,
	primary key (Pid));

create table item (
	Iexp date,
	Iprice int not null,
	Iname varchar(50) not null,
	ItemID int not null,
	Iprovider int not null,
	Icategory int not null,
	primary key (ItemID));

create table customer (
	Cusid varchar(20) not null,
	Cuspw varchar(20) not null,
	Sex char,
	Pnumber varchar(15) not null unique key,
	Cusname varchar(30) not null,
	Age int,
	Job varchar(20),
	Azip int not null,
	Astate varchar(20) not null,
	Acity varchar(20) not null,
	Astreet varchar(20) not null,
	Abuildnum int not null,
	Alastadd varchar(30),
	primary key (Cusid));

create table cart (
	CartID int not null,
	Cusid varchar(20) not null,
	primary key (CartID));

create table retailer (
	RID int not null,
	Astate varchar(20) not null,
	Alastaddr varchar(30),
	primary key (RID));

create table orders (
	CartID int not null,
	RID int not null,
	Odate date not null,
	primary key (CartID));

create table putin (
	CartID int not null,
	ItemID int not null,
	Icount int not null,
	primary key (CartID, ItemID));

create table stores (
	ItemID int not null,
	RID int not null,
	Icount int not null,
	primary key (ItemID, RID));

INSERT INTO customer VALUES ('4cha','1234','M','01088714519','kim hyeon hak',21,'student',12345,'Ulsan','Bukgu','Yaksu 9-gil',20,'ga-dong 703');
INSERT INTO customer VALUES ('4ka','9293a','M','01029392747','kim min jae',43,'teacher',12345,'Ulsan','Namgu','sinjung 8-gil',1,NULL);
INSERT INTO customer VALUES ('4ta','8871','F','01038489324','lee sung hwan',18,'student',12345,'Ulsan','Bukgu','dongdae 1-gil',8,NULL);
INSERT INTO customer VALUES ('4pa','haha','M','01027238484','choi byeong uk',25,'student',12333,'Daegu','Bukgu','daehak 2-gil',80,'geungji 126');
INSERT INTO customer VALUES ('1ga','1234','F','01099887766','moon ki hyeon',27,'officer',12333,'Daegu','dalseogu','chicken 9-gil',10,NULL);
INSERT INTO customer VALUES ('1na','4519','F','01012345678','Lee gi young',20,'student',12333,'Daegu','donggu','sincheon 1-gil',3,'201-dong 203');
INSERT INTO customer VALUES ('1da','1234','M','01028274637','Garen',37,'soldier',12444,'Busan','junggu','seomyeon 2-gil',20,'302-dong 1703');
INSERT INTO customer VALUES ('1ra','12rksk','F','01083746788','Galio',23,'mechanic',12444,'Busan','haeundaegu','haeundae 9-gil',38,NULL);
INSERT INTO customer VALUES ('1ma','sdkn','F','01937374848','Gangple',53,'captain',12444,'Busan','Bukgu','nopo 1-gil',2,'101-dong 203');
INSERT INTO customer VALUES ('1ba','1234','M','01099887221','nami',11,'student',12555,'Gwangju','Bukgu','Blue 1-gil',3,NULL);
INSERT INTO customer VALUES ('1sa','7732','M','01023874321','nidalee',43,'officer',12555,'Gwangju','Namgu','Red 3-gil',4,NULL);
INSERT INTO customer VALUES ('1a','3712bab','F','01012341234','notil',21,'student',12555,'Gwangju','Junggu','Yellow 3-gil',2,'3-dong 103');
INSERT INTO customer VALUES ('1za','3284','M','01021324432','nunu',51,'taxi driver',12666,'Daejeon','Bukgu','Purple 3-gil',2,NULL);
INSERT INTO customer VALUES ('1cha','3333','F','01038724123','darius',31,'artist',12666,'Daejeon','Yusunggu','Yusung 9-gil',72,'na-dong 11');
INSERT INTO customer VALUES ('1ka','3848ava','F','01099383777','douglas',25,'doctor',12666,'Daejeon','junggu','Black 3-gil',2,NULL);
INSERT INTO customer VALUES ('1ta','anvn123','M','01023334444','dumpist',43,NULL,12777,'Incheon','Bukgu','Airport 9-gil',20,'101-dong 703');
INSERT INTO customer VALUES ('1pa','vn3i2','M','01923237474','gragas',11,NULL,12777,'Incheon','Bukgu','Airport 9-gil',20,'101-dong 703');
INSERT INTO customer VALUES ('1ha','v9v9','F','01022283888','graves',21,NULL,12777,'Incheon','Bukgu','Airport 9-gil',20,'101-dong 703');
INSERT INTO customer VALUES ('2ga','sfdnv1','M','01038381221','nar',13,NULL,12888,'Seoul','Bukgu','Jongro 2-gil',12,NULL);
INSERT INTO customer VALUES ('2na','5v5d1','F','01099383877','nasus',31,NULL,12888,'Seoul','Gangseogu','Gangseo 3-gil',10,NULL);
INSERT INTO customer VALUES ('2da','v122vd','F','01022219442','nokteon',48,NULL,12888,'Seoul','Gangnamgu','Gangnam 5-gil',5,NULL);
INSERT INTO customer VALUES ('2ra','sdv51','M','01088382389','diana',17,NULL,12999,'Gyeonggi','Suwon','Paldal 9-gil',20,'101-dong 123');
INSERT INTO customer VALUES ('2ma','veee1','F','01077445533','draven',26,NULL,12999,'Gyeonggi','Sungnam','Red 1-gil',1,NULL);
INSERT INTO customer VALUES ('2ba','33355f','F','01066558877','rize',21,NULL,12999,'Gyeonggi','Ansan','Blue 8-gil',20,NULL);
INSERT INTO customer VALUES ('2sa','anvn123','M','01033552211','rahkan',62,NULL,13111,'Gangwon','Sokcho','Yellow 2-gil',32,NULL);
INSERT INTO customer VALUES ('2a','vv5d5w','F','01012355441','rammus',32,NULL,13111,'Gangwon','Taebaek','Green 2-gil',1,NULL);
INSERT INTO customer VALUES ('2za','775785','F','01988714519','lux',21,NULL,13111,'Gangwon','Samcheok','Blue 9-gil',3,'101-dong 203');
INSERT INTO customer VALUES ('2cha','11235','M','01013224565','rumble',38,NULL,13222,'Chungbuk','Jecheon','Red 4-gil',4,'404-dong 1843');
INSERT INTO customer VALUES ('2ka','v1v1887','F','01088415541','reneckton',30,NULL,13222,'Chungbuk','Chungju','Red 1-gil',28,NULL);
INSERT INTO customer VALUES ('2ta','jbmk1','F','01044338855','leona',29,NULL,13222,'Chungbuk','Cheongju','Black 7-gil',36,'203-dong 1203');
INSERT INTO customer VALUES ('2pa','oojn123','M','01065483214','lexai',55,NULL,13333,'Chungnam','Gongju','Mudeom 11-gil',44,NULL);
INSERT INTO customer VALUES ('2ha','48213','F','01055225522','rucian',16,NULL,13333,'Chungnam','Nonsan','Yukgun 1-gil',1,NULL);
INSERT INTO customer VALUES ('3ga','2213894','F','01012345612','rulu',21,NULL,13333,'Chungnam','Asan','Red 2-gil',12,'101-dong 703');
INSERT INTO customer VALUES ('3na','vvd211','M','01074185296','reblanc',37,NULL,13444,'Jeonbuk','Jeonju','Blue 1-gil',2,NULL);
INSERT INTO customer VALUES ('3da','8871451','M','01054641234','leesin',12,NULL,13444,'Jeonbuk','Jeonju','Blue 1-gil',2,NULL);
INSERT INTO customer VALUES ('3ra','bbvdjq','F','01012388521','riven',25,NULL,13444,'Jeonbuk','Gunsan','Where 1-gil',4,'301-dong 1203');
INSERT INTO customer VALUES ('3ma','4v4v1w12','M','01066554488','risandra',43,NULL,13555,'Jeonnam','Naju','Red 9-gil',20,NULL);
INSERT INTO customer VALUES ('3ba','1548v21v','M','01032165488','masteryi',33,NULL,13555,'Jeonnam','Naju','Blue 9-gil',3,'303-dong 101');
INSERT INTO customer VALUES ('3sa','rlagnn','F','01021478963','maokai',66,NULL,13555,'Jeonnam','Yeosu','Expo 2-gil',13,NULL);
INSERT INTO customer VALUES ('3a','v8e51v','M','01055228899','malpaite',43,NULL,13666,'Gyeongbuk','Gyeongju','Bulguksa 9-gil',1,'111-dong 1118');
INSERT INTO customer VALUES ('3za','bbrrre5','F','01065432178','mundo',52,NULL,13666,'Gyeongbuk','Sangju','Daehak 2-gil',20,NULL);
INSERT INTO customer VALUES ('3cha','mminnlan','F','01021534548','misfortune',28,NULL,13666,'Gyeongbuk','Gumi','Gongdan 8-gil',24,NULL);
INSERT INTO customer VALUES ('3ka','123456','M','01012345645','bard',15,NULL,13777,'Gyeongnam','Gimhae','Airport 2-gil',1,'101-dong 703');
INSERT INTO customer VALUES ('3ta','vn3i2','M','01912345611','barus',27,NULL,13777,'Gyeongnam','Gimhae','Airport 9-gil',20,NULL);
INSERT INTO customer VALUES ('3pa','33b211','F','01098774411','vi',40,NULL,13777,'Gyeongnam','Jinju','Naeryuk 2-gil',10,'203-dong 803');
INSERT INTO customer VALUES ('3ha','cacascw',NULL,'01085296374','vayen',NULL,NULL,13777,'Gyeongnam','Jinju','Naeryuk 2-gil',10,'203-dong 803');
INSERT INTO customer VALUES ('4ga','qqaavvddin',NULL,'01065123458','braum',NULL,NULL,12888,'Seoul','Gangseo','Gangseo 2-gil',8,'205-dong 505');
INSERT INTO customer VALUES ('4na','bbebeqqaa12',NULL,'01045192314','brand',NULL,NULL,12345,'Ulsan','Bukgu','Sincheon 6-gil',2,'801-dong 1803');
INSERT INTO customer VALUES ('4da','nmlin',NULL,'01045193215','vladimir',NULL,NULL,12345,'Ulsan','Namgu','Sinjung 2-gil',30,NULL);
INSERT INTO customer VALUES ('4ra','1234',NULL,'01012344519','blith',NULL,NULL,12345,'Ulsan','Junggu','Sicheong 3-gil',10,NULL);
INSERT INTO customer VALUES ('4ma','12345',NULL,'01088554519','sona',NULL,NULL,12333,'Daegu','Bukgu','Daehak 1-gil',80,'Seongsil 404');
INSERT INTO customer VALUES ('4ba','1a2b3c',NULL,'01075395128','soraka',NULL,NULL,12333,'Daegu','Bukgu','Daehak 1-gil',80,'Cheomsung 803');
INSERT INTO customer VALUES ('4sa','852741',NULL,'01085296385','shen',NULL,NULL,12333,'Daegu','Suseonggu','Siji 8-gil',1,NULL);
INSERT INTO customer VALUES ('4a','cascade',NULL,'01011000987','thresh',NULL,NULL,13666,'Gyeongbuk','Gyeongju','Mohwa 3-gil',18,NULL);
INSERT INTO customer VALUES ('4za','troll',NULL,'01008108108','yasuo',NULL,NULL,13777,'Gyeongnam','Jinju','Naeryuk 2-gil',3,NULL);


INSERT INTO category VALUES ('과일/견과','사과/배',101);
INSERT INTO category VALUES ('과일/견과','감귤/한라봉',102);
INSERT INTO category VALUES ('과일/견과','감/곶감',103);
INSERT INTO category VALUES ('음료/커피','생수',201);
INSERT INTO category VALUES ('음료/커피','과일/야채음료',202);
INSERT INTO category VALUES ('음료/커피','커피/티',203);
INSERT INTO category VALUES ('정육/계란','돼지고기',301);
INSERT INTO category VALUES ('정육/계란','소고기',302);
INSERT INTO category VALUES ('정육/계란','닭고기',303);

INSERT INTO provider VALUES (1,'구성농협','경북김천');
INSERT INTO provider VALUES (2,'한국씨엔에스','경기김포');
INSERT INTO provider VALUES (3,'감동','광주서구');
INSERT INTO provider VALUES (4,'광동','서울서초구');
INSERT INTO provider VALUES (5,'화인바이오','경남산청');
INSERT INTO provider VALUES (6,'코카콜라음료','경남양산');
INSERT INTO provider VALUES (7,'롯데칠성음료','경기광주');
INSERT INTO provider VALUES (8,'도드람푸드','경기안성');
INSERT INTO provider VALUES (9,'김해축산협','경남김해');
INSERT INTO provider VALUES (10,'하림','전북군산');

INSERT INTO item VALUES (NULL,19800,'사과5kg',1,1,101);
INSERT INTO item VALUES (NULL,22800,'황금배7.5kg',2,1,101);
INSERT INTO item VALUES (NULL,20800,'황금배4kg',3,1,101);
INSERT INTO item VALUES (NULL,11900,'달콤한배3kg',4,2,101);
INSERT INTO item VALUES (NULL,15900,'사과3kg',5,2,101);

INSERT INTO item VALUES (NULL,13800,'노지감귤5kg',6,1,101);
INSERT INTO item VALUES (NULL,24000,'노지감귤10kg',7,1,102);
INSERT INTO item VALUES (NULL,24900,'비가림감귤3kg',8,2,102);
INSERT INTO item VALUES (NULL,22800,'황금향2kg',9,1,102);
INSERT INTO item VALUES (NULL,14900,'서귀포햇감귤5kg',10,3,102);

INSERT INTO item VALUES (NULL,12900,'홍시3kg',11,2,103);
INSERT INTO item VALUES (NULL,9800,'대봉감5kg',12,1,103);
INSERT INTO item VALUES (NULL,10900,'반시3kg',13,2,103);
INSERT INTO item VALUES (NULL,22900,'햇대봉감15kg',14,3,103);
INSERT INTO item VALUES (NULL,15800,'씨없는반시4.5kg',15,2,103);

INSERT INTO item VALUES (NULL,980,'삼다수2L',16,4,201);
INSERT INTO item VALUES (NULL,430,'삼다수500ml',17,4,201);
INSERT INTO item VALUES (NULL,390,'삼다수330ml',18,4,201);
INSERT INTO item VALUES (NULL,2520,'노브랜드2L*6',19,5,201);
INSERT INTO item VALUES (NULL,3980,'노브랜드500ml*20',20,5,201);

INSERT INTO item VALUES (NULL,1980,'미닛메이드오리지널오렌지1.8L',21,6,202);
INSERT INTO item VALUES (NULL,1980,'미닛메이드포도1.8L',22,6,202);
INSERT INTO item VALUES (NULL,7780,'오렌지드링크190ml*24',23,7,202);
INSERT INTO item VALUES (NULL,7780,'사과드링크190ml*24',24,7,202);
INSERT INTO item VALUES (NULL,7780,'망고드링크190ml*24',25,7,202);

INSERT INTO item VALUES (NULL,980,'칸타타스위트아메리카노275ml',26,7,203);
INSERT INTO item VALUES (NULL,980,'칸타타콜드브루블랙275ml',27,7,203);
INSERT INTO item VALUES (NULL,2380,'레쓰비마일드175ml*6',28,7,203);
INSERT INTO item VALUES (NULL,1080,'립톤아이스티복숭아500ml',29,7,203);
INSERT INTO item VALUES (NULL,15200,'립톤아이스티복숭아355ml*24',30,7,203);

INSERT INTO item VALUES (NULL,6900,'냉장도깨비살400g',31,8,301);
INSERT INTO item VALUES (NULL,13900,'칼집삼겹살500g',32,8,301);
INSERT INTO item VALUES (NULL,13900,'칼집목살500g',33,8,301);
INSERT INTO item VALUES (NULL,5900,'냉동갈비찜용500g',34,8,301);
INSERT INTO item VALUES (NULL,11900,'냉장갈매기살500g',35,8,301);

INSERT INTO item VALUES (NULL,23900,'양지400g',36,9,302);
INSERT INTO item VALUES (NULL,35900,'등심400g',37,9,302);
INSERT INTO item VALUES (NULL,36900,'채끝400g',38,9,302);
INSERT INTO item VALUES (NULL,26000,'등심300g',39,9,302);
INSERT INTO item VALUES (NULL,20000,'불고기400g',40,9,302);

INSERT INTO item VALUES (NULL,5980,'닭가슴살400g',41,10,303);
INSERT INTO item VALUES (NULL,4980,'안심스테이크360g',42,10,303);
INSERT INTO item VALUES (NULL,22000,'닭가슴살1kg*3',43,10,303);
INSERT INTO item VALUES (NULL,6480,'백숙용9호',44,10,303);
INSERT INTO item VALUES (NULL,13500,'정육1kg',45,10,303);

INSERT INTO retailer VALUES (1,'Seoul',NULL);
INSERT INTO retailer VALUES (2,'Busan',NULL);
INSERT INTO retailer VALUES (3,'Ulsan',NULL);
INSERT INTO retailer VALUES (4,'Daegu',NULL);
INSERT INTO retailer VALUES (5,'Daejeon',NULL);
INSERT INTO retailer VALUES (6,'Gwangju',NULL);
INSERT INTO retailer VALUES (7,'Incheon',NULL);

INSERT INTO retailer VALUES (8,'Gyeonggi',NULL);
INSERT INTO retailer VALUES (9,'Gangwon',NULL);
INSERT INTO retailer VALUES (10,'Chungbuk',NULL);
INSERT INTO retailer VALUES (11,'Chungnam',NULL);
INSERT INTO retailer VALUES (12,'Jeonbuk',NULL);
INSERT INTO retailer VALUES (13,'Jeonnam',NULL);
INSERT INTO retailer VALUES (14,'Gyeongbuk',NULL);
INSERT INTO retailer VALUES (15,'Gyeongnam',NULL);

INSERT INTO stores VALUES (1, 1, 0);
INSERT INTO stores VALUES (2, 1, 0);
INSERT INTO stores VALUES (3, 1, 0);
INSERT INTO stores VALUES (4, 1, 0);
INSERT INTO stores VALUES (5, 1, 1);
INSERT INTO stores VALUES (6, 1, 1);
INSERT INTO stores VALUES (7, 1, 1);
INSERT INTO stores VALUES (8, 1, 1);
INSERT INTO stores VALUES (9, 1, 1);
INSERT INTO stores VALUES (10, 1, 1);
INSERT INTO stores VALUES (11, 1, 1);
INSERT INTO stores VALUES (12, 1, 1);
INSERT INTO stores VALUES (13, 1, 1);
INSERT INTO stores VALUES (14, 1, 1);
INSERT INTO stores VALUES (15, 1, 1);
INSERT INTO stores VALUES (16, 1, 100);
INSERT INTO stores VALUES (17, 1, 100);
INSERT INTO stores VALUES (18, 1, 100);
INSERT INTO stores VALUES (19, 1, 100);
INSERT INTO stores VALUES (20, 1, 100);
INSERT INTO stores VALUES (21, 1, 100);
INSERT INTO stores VALUES (22, 1, 100);
INSERT INTO stores VALUES (23, 1, 100);
INSERT INTO stores VALUES (24, 1, 100);
INSERT INTO stores VALUES (25, 1, 100);
INSERT INTO stores VALUES (26, 1, 0);
INSERT INTO stores VALUES (27, 1, 0);
INSERT INTO stores VALUES (28, 1, 0);
INSERT INTO stores VALUES (29, 1, 0);
INSERT INTO stores VALUES (30, 1, 0);
INSERT INTO stores VALUES (31, 1, 10);
INSERT INTO stores VALUES (32, 1, 10);
INSERT INTO stores VALUES (33, 1, 10);
INSERT INTO stores VALUES (34, 1, 10);
INSERT INTO stores VALUES (35, 1, 10);
INSERT INTO stores VALUES (36, 1, 10);
INSERT INTO stores VALUES (37, 1, 10);
INSERT INTO stores VALUES (38, 1, 10);
INSERT INTO stores VALUES (39, 1, 10);
INSERT INTO stores VALUES (40, 1, 100);
INSERT INTO stores VALUES (41, 1, 100);
INSERT INTO stores VALUES (42, 1, 100);
INSERT INTO stores VALUES (43, 1, 100);
INSERT INTO stores VALUES (44, 1, 100);
INSERT INTO stores VALUES (45, 1, 100);

INSERT INTO stores VALUES (1, 2, 0);
INSERT INTO stores VALUES (2, 2, 0);
INSERT INTO stores VALUES (3, 2, 0);
INSERT INTO stores VALUES (4, 2, 0);
INSERT INTO stores VALUES (5, 2, 1);
INSERT INTO stores VALUES (6, 2, 1);
INSERT INTO stores VALUES (7, 2, 0);
INSERT INTO stores VALUES (8, 2, 1);
INSERT INTO stores VALUES (9, 2, 1);
INSERT INTO stores VALUES (10, 2, 1);
INSERT INTO stores VALUES (11, 2, 1);
INSERT INTO stores VALUES (12, 2, 0);
INSERT INTO stores VALUES (13, 2, 1);
INSERT INTO stores VALUES (14, 2, 1);
INSERT INTO stores VALUES (15, 2, 1);
INSERT INTO stores VALUES (16, 2, 100);
INSERT INTO stores VALUES (17, 2, 100);
INSERT INTO stores VALUES (18, 2, 200);
INSERT INTO stores VALUES (19, 2, 100);
INSERT INTO stores VALUES (20, 2, 100);
INSERT INTO stores VALUES (21, 2, 100);
INSERT INTO stores VALUES (22, 2, 201);
INSERT INTO stores VALUES (23, 2, 100);
INSERT INTO stores VALUES (24, 2, 50);
INSERT INTO stores VALUES (25, 2, 100);
INSERT INTO stores VALUES (26, 2, 0);
INSERT INTO stores VALUES (27, 2, 0);
INSERT INTO stores VALUES (28, 2, 0);
INSERT INTO stores VALUES (29, 2, 1);
INSERT INTO stores VALUES (30, 2, 2);
INSERT INTO stores VALUES (31, 2, 10);
INSERT INTO stores VALUES (32, 2, 10);
INSERT INTO stores VALUES (33, 2, 10);
INSERT INTO stores VALUES (34, 2, 10);
INSERT INTO stores VALUES (35, 2, 10);
INSERT INTO stores VALUES (36, 2, 10);
INSERT INTO stores VALUES (37, 2, 10);
INSERT INTO stores VALUES (38, 2, 10);
INSERT INTO stores VALUES (39, 2, 10);
INSERT INTO stores VALUES (40, 2, 100);
INSERT INTO stores VALUES (41, 2, 70);
INSERT INTO stores VALUES (42, 2, 100);
INSERT INTO stores VALUES (43, 2, 100);
INSERT INTO stores VALUES (44, 2, 100);
INSERT INTO stores VALUES (45, 2, 100);

INSERT INTO stores VALUES (1, 3, 0);
INSERT INTO stores VALUES (2, 3, 0);
INSERT INTO stores VALUES (3, 3, 0);
INSERT INTO stores VALUES (4, 3, 0);
INSERT INTO stores VALUES (5, 3, 1);
INSERT INTO stores VALUES (6, 3, 1);
INSERT INTO stores VALUES (7, 3, 1);
INSERT INTO stores VALUES (8, 3, 1);
INSERT INTO stores VALUES (9, 3, 1);
INSERT INTO stores VALUES (10, 3, 1);
INSERT INTO stores VALUES (11, 3, 1);
INSERT INTO stores VALUES (12, 3, 1);
INSERT INTO stores VALUES (13, 3, 1);
INSERT INTO stores VALUES (14, 3, 1);
INSERT INTO stores VALUES (15, 3, 1);
INSERT INTO stores VALUES (16, 3, 100);
INSERT INTO stores VALUES (17, 3, 100);
INSERT INTO stores VALUES (18, 3, 100);
INSERT INTO stores VALUES (19, 3, 100);
INSERT INTO stores VALUES (20, 3, 100);
INSERT INTO stores VALUES (21, 3, 100);
INSERT INTO stores VALUES (22, 3, 100);
INSERT INTO stores VALUES (23, 3, 100);
INSERT INTO stores VALUES (24, 3, 100);
INSERT INTO stores VALUES (25, 3, 100);
INSERT INTO stores VALUES (26, 3, 0);
INSERT INTO stores VALUES (27, 3, 0);
INSERT INTO stores VALUES (28, 3, 0);
INSERT INTO stores VALUES (29, 3, 0);
INSERT INTO stores VALUES (30, 3, 0);
INSERT INTO stores VALUES (31, 3, 10);
INSERT INTO stores VALUES (32, 3, 10);
INSERT INTO stores VALUES (33, 3, 10);
INSERT INTO stores VALUES (34, 3, 10);
INSERT INTO stores VALUES (35, 3, 10);
INSERT INTO stores VALUES (36, 3, 10);
INSERT INTO stores VALUES (37, 3, 10);
INSERT INTO stores VALUES (38, 3, 10);
INSERT INTO stores VALUES (39, 3, 10);
INSERT INTO stores VALUES (40, 3, 100);
INSERT INTO stores VALUES (41, 3, 100);
INSERT INTO stores VALUES (42, 3, 100);
INSERT INTO stores VALUES (43, 3, 100);
INSERT INTO stores VALUES (44, 3, 100);
INSERT INTO stores VALUES (45, 3, 100);

INSERT INTO stores VALUES (1, 4, 0);
INSERT INTO stores VALUES (2, 4, 0);
INSERT INTO stores VALUES (3, 4, 0);
INSERT INTO stores VALUES (4, 4, 0);
INSERT INTO stores VALUES (5, 4, 1);
INSERT INTO stores VALUES (6, 4, 1);
INSERT INTO stores VALUES (7, 4, 1);
INSERT INTO stores VALUES (8, 4, 1);
INSERT INTO stores VALUES (9, 4, 1);
INSERT INTO stores VALUES (10, 4, 1);
INSERT INTO stores VALUES (11, 4, 1);
INSERT INTO stores VALUES (12, 4, 1);
INSERT INTO stores VALUES (13, 4, 1);
INSERT INTO stores VALUES (14, 4, 1);
INSERT INTO stores VALUES (15, 4, 1);
INSERT INTO stores VALUES (16, 4, 100);
INSERT INTO stores VALUES (17, 4, 100);
INSERT INTO stores VALUES (18, 4, 100);
INSERT INTO stores VALUES (19, 4, 100);
INSERT INTO stores VALUES (20, 4, 100);
INSERT INTO stores VALUES (21, 4, 100);
INSERT INTO stores VALUES (22, 4, 100);
INSERT INTO stores VALUES (23, 4, 100);
INSERT INTO stores VALUES (24, 4, 100);
INSERT INTO stores VALUES (25, 4, 100);
INSERT INTO stores VALUES (26, 4, 0);
INSERT INTO stores VALUES (27, 4, 0);
INSERT INTO stores VALUES (28, 4, 0);
INSERT INTO stores VALUES (29, 4, 0);
INSERT INTO stores VALUES (30, 4, 0);
INSERT INTO stores VALUES (31, 4, 10);
INSERT INTO stores VALUES (32, 4, 10);
INSERT INTO stores VALUES (33, 4, 10);
INSERT INTO stores VALUES (34, 4, 10);
INSERT INTO stores VALUES (35, 4, 10);
INSERT INTO stores VALUES (36, 4, 10);
INSERT INTO stores VALUES (37, 4, 10);
INSERT INTO stores VALUES (38, 4, 10);
INSERT INTO stores VALUES (39, 4, 10);
INSERT INTO stores VALUES (40, 4, 100);
INSERT INTO stores VALUES (41, 4, 100);
INSERT INTO stores VALUES (42, 4, 100);
INSERT INTO stores VALUES (43, 4, 100);
INSERT INTO stores VALUES (44, 4, 100);
INSERT INTO stores VALUES (45, 4, 100);

INSERT INTO stores VALUES (1, 5, 0);
INSERT INTO stores VALUES (2, 5, 0);
INSERT INTO stores VALUES (3, 5, 0);
INSERT INTO stores VALUES (4, 5, 0);
INSERT INTO stores VALUES (5, 5, 1);
INSERT INTO stores VALUES (6, 5, 1);
INSERT INTO stores VALUES (7, 5, 1);
INSERT INTO stores VALUES (8, 5, 1);
INSERT INTO stores VALUES (9, 5, 1);
INSERT INTO stores VALUES (10, 5, 1);
INSERT INTO stores VALUES (11, 5, 1);
INSERT INTO stores VALUES (12, 5, 1);
INSERT INTO stores VALUES (13, 5, 1);
INSERT INTO stores VALUES (14, 5, 1);
INSERT INTO stores VALUES (15, 5, 1);
INSERT INTO stores VALUES (16, 5, 100);
INSERT INTO stores VALUES (17, 5, 100);
INSERT INTO stores VALUES (18, 5, 100);
INSERT INTO stores VALUES (19, 5, 100);
INSERT INTO stores VALUES (20, 5, 100);
INSERT INTO stores VALUES (21, 5, 100);
INSERT INTO stores VALUES (22, 5, 100);
INSERT INTO stores VALUES (23, 5, 100);
INSERT INTO stores VALUES (24, 5, 100);
INSERT INTO stores VALUES (25, 5, 100);
INSERT INTO stores VALUES (26, 5, 0);
INSERT INTO stores VALUES (27, 5, 0);
INSERT INTO stores VALUES (28, 5, 0);
INSERT INTO stores VALUES (29, 5, 0);
INSERT INTO stores VALUES (30, 5, 0);
INSERT INTO stores VALUES (31, 5, 10);
INSERT INTO stores VALUES (32, 5, 10);
INSERT INTO stores VALUES (33, 5, 10);
INSERT INTO stores VALUES (34, 5, 10);
INSERT INTO stores VALUES (35, 5, 10);
INSERT INTO stores VALUES (36, 5, 10);
INSERT INTO stores VALUES (37, 5, 10);
INSERT INTO stores VALUES (38, 5, 10);
INSERT INTO stores VALUES (39, 5, 10);
INSERT INTO stores VALUES (40, 5, 100);
INSERT INTO stores VALUES (41, 5, 100);
INSERT INTO stores VALUES (42, 5, 100);
INSERT INTO stores VALUES (43, 5, 100);
INSERT INTO stores VALUES (44, 5, 100);
INSERT INTO stores VALUES (45, 5, 100);

INSERT INTO stores VALUES (1, 6, 0);
INSERT INTO stores VALUES (2, 6, 0);
INSERT INTO stores VALUES (3, 6, 0);
INSERT INTO stores VALUES (4, 6, 0);
INSERT INTO stores VALUES (5, 6, 1);
INSERT INTO stores VALUES (6, 6, 1);
INSERT INTO stores VALUES (7, 6, 1);
INSERT INTO stores VALUES (8, 6, 1);
INSERT INTO stores VALUES (9, 6, 1);
INSERT INTO stores VALUES (10, 6, 1);
INSERT INTO stores VALUES (11, 6, 1);
INSERT INTO stores VALUES (12, 6, 1);
INSERT INTO stores VALUES (13, 6, 1);
INSERT INTO stores VALUES (14, 6, 1);
INSERT INTO stores VALUES (15, 6, 1);
INSERT INTO stores VALUES (16, 6, 100);
INSERT INTO stores VALUES (17, 6, 100);
INSERT INTO stores VALUES (18, 6, 100);
INSERT INTO stores VALUES (19, 6, 100);
INSERT INTO stores VALUES (20, 6, 100);
INSERT INTO stores VALUES (21, 6, 100);
INSERT INTO stores VALUES (22, 6, 100);
INSERT INTO stores VALUES (23, 6, 100);
INSERT INTO stores VALUES (24, 6, 100);
INSERT INTO stores VALUES (25, 6, 100);
INSERT INTO stores VALUES (26, 6, 0);
INSERT INTO stores VALUES (27, 6, 0);
INSERT INTO stores VALUES (28, 6, 0);
INSERT INTO stores VALUES (29, 6, 0);
INSERT INTO stores VALUES (30, 6, 0);
INSERT INTO stores VALUES (31, 6, 10);
INSERT INTO stores VALUES (32, 6, 10);
INSERT INTO stores VALUES (33, 6, 10);
INSERT INTO stores VALUES (34, 6, 10);
INSERT INTO stores VALUES (35, 6, 10);
INSERT INTO stores VALUES (36, 6, 10);
INSERT INTO stores VALUES (37, 6, 10);
INSERT INTO stores VALUES (38, 6, 10);
INSERT INTO stores VALUES (39, 6, 10);
INSERT INTO stores VALUES (40, 6, 100);
INSERT INTO stores VALUES (41, 6, 100);
INSERT INTO stores VALUES (42, 6, 100);
INSERT INTO stores VALUES (43, 6, 100);
INSERT INTO stores VALUES (44, 6, 100);
INSERT INTO stores VALUES (45, 6, 100);

INSERT INTO stores VALUES (1, 7, 0);
INSERT INTO stores VALUES (2, 7, 0);
INSERT INTO stores VALUES (3, 7, 0);
INSERT INTO stores VALUES (4, 7, 0);
INSERT INTO stores VALUES (5, 7, 1);
INSERT INTO stores VALUES (6, 7, 1);
INSERT INTO stores VALUES (7, 7, 1);
INSERT INTO stores VALUES (8, 7, 1);
INSERT INTO stores VALUES (9, 7, 1);
INSERT INTO stores VALUES (10, 7, 1);
INSERT INTO stores VALUES (11, 7, 1);
INSERT INTO stores VALUES (12, 7, 1);
INSERT INTO stores VALUES (13, 7, 1);
INSERT INTO stores VALUES (14, 7, 1);
INSERT INTO stores VALUES (15, 7, 1);
INSERT INTO stores VALUES (16, 7, 100);
INSERT INTO stores VALUES (17, 7, 100);
INSERT INTO stores VALUES (18, 7, 100);
INSERT INTO stores VALUES (19, 7, 100);
INSERT INTO stores VALUES (20, 7, 100);
INSERT INTO stores VALUES (21, 7, 100);
INSERT INTO stores VALUES (22, 7, 100);
INSERT INTO stores VALUES (23, 7, 100);
INSERT INTO stores VALUES (24, 7, 100);
INSERT INTO stores VALUES (25, 7, 100);
INSERT INTO stores VALUES (26, 7, 0);
INSERT INTO stores VALUES (27, 7, 0);
INSERT INTO stores VALUES (28, 7, 0);
INSERT INTO stores VALUES (29, 7, 0);
INSERT INTO stores VALUES (30, 7, 0);
INSERT INTO stores VALUES (31, 7, 10);
INSERT INTO stores VALUES (32, 7, 10);
INSERT INTO stores VALUES (33, 7, 10);
INSERT INTO stores VALUES (34, 7, 10);
INSERT INTO stores VALUES (35, 7, 10);
INSERT INTO stores VALUES (36, 7, 10);
INSERT INTO stores VALUES (37, 7, 10);
INSERT INTO stores VALUES (38, 7, 10);
INSERT INTO stores VALUES (39, 7, 10);
INSERT INTO stores VALUES (40, 7, 100);
INSERT INTO stores VALUES (41, 7, 100);
INSERT INTO stores VALUES (42, 7, 100);
INSERT INTO stores VALUES (43, 7, 100);
INSERT INTO stores VALUES (44, 7, 100);
INSERT INTO stores VALUES (45, 7, 100);

INSERT INTO stores VALUES (1, 8, 0);
INSERT INTO stores VALUES (2, 8, 0);
INSERT INTO stores VALUES (3, 8, 0);
INSERT INTO stores VALUES (4, 8, 0);
INSERT INTO stores VALUES (5, 8, 1);
INSERT INTO stores VALUES (6, 8, 1);
INSERT INTO stores VALUES (7, 8, 1);
INSERT INTO stores VALUES (8, 8, 1);
INSERT INTO stores VALUES (9, 8, 1);
INSERT INTO stores VALUES (10, 8, 1);
INSERT INTO stores VALUES (11, 8, 1);
INSERT INTO stores VALUES (12, 8, 1);
INSERT INTO stores VALUES (13, 8, 1);
INSERT INTO stores VALUES (14, 8, 1);
INSERT INTO stores VALUES (15, 8, 1);
INSERT INTO stores VALUES (16, 8, 100);
INSERT INTO stores VALUES (17, 8, 100);
INSERT INTO stores VALUES (18, 8, 100);
INSERT INTO stores VALUES (19, 8, 100);
INSERT INTO stores VALUES (20, 8, 100);
INSERT INTO stores VALUES (21, 8, 100);
INSERT INTO stores VALUES (22, 8, 100);
INSERT INTO stores VALUES (23, 8, 100);
INSERT INTO stores VALUES (24, 8, 100);
INSERT INTO stores VALUES (25, 8, 100);
INSERT INTO stores VALUES (26, 8, 0);
INSERT INTO stores VALUES (27, 8, 0);
INSERT INTO stores VALUES (28, 8, 0);
INSERT INTO stores VALUES (29, 8, 0);
INSERT INTO stores VALUES (30, 8, 0);
INSERT INTO stores VALUES (31, 8, 10);
INSERT INTO stores VALUES (32, 8, 10);
INSERT INTO stores VALUES (33, 8, 10);
INSERT INTO stores VALUES (34, 8, 10);
INSERT INTO stores VALUES (35, 8, 10);
INSERT INTO stores VALUES (36, 8, 10);
INSERT INTO stores VALUES (37, 8, 10);
INSERT INTO stores VALUES (38, 8, 10);
INSERT INTO stores VALUES (39, 8, 10);
INSERT INTO stores VALUES (40, 8, 100);
INSERT INTO stores VALUES (41, 8, 100);
INSERT INTO stores VALUES (42, 8, 100);
INSERT INTO stores VALUES (43, 8, 100);
INSERT INTO stores VALUES (44, 8, 100);
INSERT INTO stores VALUES (45, 8, 100);

INSERT INTO stores VALUES (1, 9, 0);
INSERT INTO stores VALUES (2, 9, 0);
INSERT INTO stores VALUES (3, 9, 0);
INSERT INTO stores VALUES (4, 9, 0);
INSERT INTO stores VALUES (5, 9, 1);
INSERT INTO stores VALUES (6, 9, 1);
INSERT INTO stores VALUES (7, 9, 1);
INSERT INTO stores VALUES (8, 9, 1);
INSERT INTO stores VALUES (9, 9, 1);
INSERT INTO stores VALUES (10, 9, 1);
INSERT INTO stores VALUES (11, 9, 1);
INSERT INTO stores VALUES (12, 9, 1);
INSERT INTO stores VALUES (13, 9, 1);
INSERT INTO stores VALUES (14, 9, 1);
INSERT INTO stores VALUES (15, 9, 1);
INSERT INTO stores VALUES (16, 9, 100);
INSERT INTO stores VALUES (17, 9, 100);
INSERT INTO stores VALUES (18, 9, 100);
INSERT INTO stores VALUES (19, 9, 100);
INSERT INTO stores VALUES (20, 9, 100);
INSERT INTO stores VALUES (21, 9, 100);
INSERT INTO stores VALUES (22, 9, 100);
INSERT INTO stores VALUES (23, 9, 100);
INSERT INTO stores VALUES (24, 9, 100);
INSERT INTO stores VALUES (25, 9, 100);
INSERT INTO stores VALUES (26, 9, 0);
INSERT INTO stores VALUES (27, 9, 0);
INSERT INTO stores VALUES (28, 9, 0);
INSERT INTO stores VALUES (29, 9, 0);
INSERT INTO stores VALUES (30, 9, 0);
INSERT INTO stores VALUES (31, 9, 10);
INSERT INTO stores VALUES (32, 9, 10);
INSERT INTO stores VALUES (33, 9, 10);
INSERT INTO stores VALUES (34, 9, 10);
INSERT INTO stores VALUES (35, 9, 10);
INSERT INTO stores VALUES (36, 9, 10);
INSERT INTO stores VALUES (37, 9, 10);
INSERT INTO stores VALUES (38, 9, 10);
INSERT INTO stores VALUES (39, 9, 10);
INSERT INTO stores VALUES (40, 9, 100);
INSERT INTO stores VALUES (41, 9, 100);
INSERT INTO stores VALUES (42, 9, 100);
INSERT INTO stores VALUES (43, 9, 100);
INSERT INTO stores VALUES (44, 9, 100);
INSERT INTO stores VALUES (45, 9, 100);

INSERT INTO stores VALUES (1, 10, 0);
INSERT INTO stores VALUES (2, 10, 0);
INSERT INTO stores VALUES (3, 10, 0);
INSERT INTO stores VALUES (4, 10, 0);
INSERT INTO stores VALUES (5, 10, 1);
INSERT INTO stores VALUES (6, 10, 1);
INSERT INTO stores VALUES (7, 10, 1);
INSERT INTO stores VALUES (8, 10, 1);
INSERT INTO stores VALUES (9, 10, 1);
INSERT INTO stores VALUES (10, 10, 1);
INSERT INTO stores VALUES (11, 10, 1);
INSERT INTO stores VALUES (12, 10, 1);
INSERT INTO stores VALUES (13, 10, 1);
INSERT INTO stores VALUES (14, 10, 1);
INSERT INTO stores VALUES (15, 10, 1);
INSERT INTO stores VALUES (16, 10, 100);
INSERT INTO stores VALUES (17, 10, 100);
INSERT INTO stores VALUES (18, 10, 100);
INSERT INTO stores VALUES (19, 10, 100);
INSERT INTO stores VALUES (20, 10, 100);
INSERT INTO stores VALUES (21, 10, 100);
INSERT INTO stores VALUES (22, 10, 100);
INSERT INTO stores VALUES (23, 10, 100);
INSERT INTO stores VALUES (24, 10, 100);
INSERT INTO stores VALUES (25, 10, 100);
INSERT INTO stores VALUES (26, 10, 0);
INSERT INTO stores VALUES (27, 10, 0);
INSERT INTO stores VALUES (28, 10, 0);
INSERT INTO stores VALUES (29, 10, 0);
INSERT INTO stores VALUES (30, 10, 0);
INSERT INTO stores VALUES (31, 10, 10);
INSERT INTO stores VALUES (32, 10, 10);
INSERT INTO stores VALUES (33, 10, 10);
INSERT INTO stores VALUES (34, 10, 10);
INSERT INTO stores VALUES (35, 10, 10);
INSERT INTO stores VALUES (36, 10, 10);
INSERT INTO stores VALUES (37, 10, 10);
INSERT INTO stores VALUES (38, 10, 10);
INSERT INTO stores VALUES (39, 10, 10);
INSERT INTO stores VALUES (40, 10, 100);
INSERT INTO stores VALUES (41, 10, 100);
INSERT INTO stores VALUES (42, 10, 100);
INSERT INTO stores VALUES (43, 10, 100);
INSERT INTO stores VALUES (44, 10, 100);
INSERT INTO stores VALUES (45, 10, 100);

INSERT INTO stores VALUES (1, 11, 0);
INSERT INTO stores VALUES (2, 11, 0);
INSERT INTO stores VALUES (3, 11, 0);
INSERT INTO stores VALUES (4, 11, 0);
INSERT INTO stores VALUES (5, 11, 1);
INSERT INTO stores VALUES (6, 11, 1);
INSERT INTO stores VALUES (7, 11, 1);
INSERT INTO stores VALUES (8, 11, 1);
INSERT INTO stores VALUES (9, 11, 1);
INSERT INTO stores VALUES (10, 11, 1);
INSERT INTO stores VALUES (11, 11, 1);
INSERT INTO stores VALUES (12, 11, 1);
INSERT INTO stores VALUES (13, 11, 1);
INSERT INTO stores VALUES (14, 11, 1);
INSERT INTO stores VALUES (15, 11, 1);
INSERT INTO stores VALUES (16, 11, 100);
INSERT INTO stores VALUES (17, 11, 100);
INSERT INTO stores VALUES (18, 11, 100);
INSERT INTO stores VALUES (19, 11, 100);
INSERT INTO stores VALUES (20, 11, 100);
INSERT INTO stores VALUES (21, 11, 100);
INSERT INTO stores VALUES (22, 11, 100);
INSERT INTO stores VALUES (23, 11, 100);
INSERT INTO stores VALUES (24, 11, 100);
INSERT INTO stores VALUES (25, 11, 100);
INSERT INTO stores VALUES (26, 11, 0);
INSERT INTO stores VALUES (27, 11, 0);
INSERT INTO stores VALUES (28, 11, 0);
INSERT INTO stores VALUES (29, 11, 0);
INSERT INTO stores VALUES (30, 11, 0);
INSERT INTO stores VALUES (31, 11, 10);
INSERT INTO stores VALUES (32, 11, 10);
INSERT INTO stores VALUES (33, 11, 10);
INSERT INTO stores VALUES (34, 11, 10);
INSERT INTO stores VALUES (35, 11, 10);
INSERT INTO stores VALUES (36, 11, 10);
INSERT INTO stores VALUES (37, 11, 10);
INSERT INTO stores VALUES (38, 11, 10);
INSERT INTO stores VALUES (39, 11, 10);
INSERT INTO stores VALUES (40, 11, 100);
INSERT INTO stores VALUES (41, 11, 100);
INSERT INTO stores VALUES (42, 11, 100);
INSERT INTO stores VALUES (43, 11, 100);
INSERT INTO stores VALUES (44, 11, 100);
INSERT INTO stores VALUES (45, 11, 100);

INSERT INTO stores VALUES (1, 12, 0);
INSERT INTO stores VALUES (2, 12, 0);
INSERT INTO stores VALUES (3, 12, 0);
INSERT INTO stores VALUES (4, 12, 0);
INSERT INTO stores VALUES (5, 12, 1);
INSERT INTO stores VALUES (6, 12, 1);
INSERT INTO stores VALUES (7, 12, 1);
INSERT INTO stores VALUES (8, 12, 1);
INSERT INTO stores VALUES (9, 12, 1);
INSERT INTO stores VALUES (10, 12, 1);
INSERT INTO stores VALUES (11, 12, 1);
INSERT INTO stores VALUES (12, 12, 1);
INSERT INTO stores VALUES (13, 12, 1);
INSERT INTO stores VALUES (14, 12, 1);
INSERT INTO stores VALUES (15, 12, 1);
INSERT INTO stores VALUES (16, 12, 100);
INSERT INTO stores VALUES (17, 12, 100);
INSERT INTO stores VALUES (18, 12, 100);
INSERT INTO stores VALUES (19, 12, 100);
INSERT INTO stores VALUES (20, 12, 100);
INSERT INTO stores VALUES (21, 12, 100);
INSERT INTO stores VALUES (22, 12, 100);
INSERT INTO stores VALUES (23, 12, 100);
INSERT INTO stores VALUES (24, 12, 100);
INSERT INTO stores VALUES (25, 12, 100);
INSERT INTO stores VALUES (26, 12, 0);
INSERT INTO stores VALUES (27, 12, 0);
INSERT INTO stores VALUES (28, 12, 0);
INSERT INTO stores VALUES (29, 12, 0);
INSERT INTO stores VALUES (30, 12, 0);
INSERT INTO stores VALUES (31, 12, 10);
INSERT INTO stores VALUES (32, 12, 10);
INSERT INTO stores VALUES (33, 12, 10);
INSERT INTO stores VALUES (34, 12, 10);
INSERT INTO stores VALUES (35, 12, 10);
INSERT INTO stores VALUES (36, 12, 10);
INSERT INTO stores VALUES (37, 12, 10);
INSERT INTO stores VALUES (38, 12, 10);
INSERT INTO stores VALUES (39, 12, 10);
INSERT INTO stores VALUES (40, 12, 100);
INSERT INTO stores VALUES (41, 12, 100);
INSERT INTO stores VALUES (42, 12, 100);
INSERT INTO stores VALUES (43, 12, 100);
INSERT INTO stores VALUES (44, 12, 100);
INSERT INTO stores VALUES (45, 12, 100);

INSERT INTO stores VALUES (1, 13, 0);
INSERT INTO stores VALUES (2, 13, 0);
INSERT INTO stores VALUES (3, 13, 0);
INSERT INTO stores VALUES (4, 13, 0);
INSERT INTO stores VALUES (5, 13, 1);
INSERT INTO stores VALUES (6, 13, 1);
INSERT INTO stores VALUES (7, 13, 1);
INSERT INTO stores VALUES (8, 13, 1);
INSERT INTO stores VALUES (9, 13, 1);
INSERT INTO stores VALUES (10, 13, 1);
INSERT INTO stores VALUES (11, 13, 1);
INSERT INTO stores VALUES (12, 13, 1);
INSERT INTO stores VALUES (13, 13, 1);
INSERT INTO stores VALUES (14, 13, 1);
INSERT INTO stores VALUES (15, 13, 1);
INSERT INTO stores VALUES (16, 13, 100);
INSERT INTO stores VALUES (17, 13, 100);
INSERT INTO stores VALUES (18, 13, 100);
INSERT INTO stores VALUES (19, 13, 100);
INSERT INTO stores VALUES (20, 13, 100);
INSERT INTO stores VALUES (21, 13, 100);
INSERT INTO stores VALUES (22, 13, 100);
INSERT INTO stores VALUES (23, 13, 100);
INSERT INTO stores VALUES (24, 13, 100);
INSERT INTO stores VALUES (25, 13, 100);
INSERT INTO stores VALUES (26, 13, 0);
INSERT INTO stores VALUES (27, 13, 0);
INSERT INTO stores VALUES (28, 13, 0);
INSERT INTO stores VALUES (29, 13, 0);
INSERT INTO stores VALUES (30, 13, 0);
INSERT INTO stores VALUES (31, 13, 10);
INSERT INTO stores VALUES (32, 13, 10);
INSERT INTO stores VALUES (33, 13, 10);
INSERT INTO stores VALUES (34, 13, 10);
INSERT INTO stores VALUES (35, 13, 10);
INSERT INTO stores VALUES (36, 13, 10);
INSERT INTO stores VALUES (37, 13, 10);
INSERT INTO stores VALUES (38, 13, 10);
INSERT INTO stores VALUES (39, 13, 10);
INSERT INTO stores VALUES (40, 13, 100);
INSERT INTO stores VALUES (41, 13, 100);
INSERT INTO stores VALUES (42, 13, 100);
INSERT INTO stores VALUES (43, 13, 100);
INSERT INTO stores VALUES (44, 13, 100);
INSERT INTO stores VALUES (45, 13, 100);

INSERT INTO stores VALUES (1, 14, 0);
INSERT INTO stores VALUES (2, 14, 0);
INSERT INTO stores VALUES (3, 14, 0);
INSERT INTO stores VALUES (4, 14, 0);
INSERT INTO stores VALUES (5, 14, 1);
INSERT INTO stores VALUES (6, 14, 1);
INSERT INTO stores VALUES (7, 14, 1);
INSERT INTO stores VALUES (8, 14, 1);
INSERT INTO stores VALUES (9, 14, 1);
INSERT INTO stores VALUES (10, 14, 1);
INSERT INTO stores VALUES (11, 14, 1);
INSERT INTO stores VALUES (12, 14, 1);
INSERT INTO stores VALUES (13, 14, 1);
INSERT INTO stores VALUES (14, 14, 1);
INSERT INTO stores VALUES (15, 14, 1);
INSERT INTO stores VALUES (16, 14, 100);
INSERT INTO stores VALUES (17, 14, 100);
INSERT INTO stores VALUES (18, 14, 100);
INSERT INTO stores VALUES (19, 14, 100);
INSERT INTO stores VALUES (20, 14, 100);
INSERT INTO stores VALUES (21, 14, 100);
INSERT INTO stores VALUES (22, 14, 100);
INSERT INTO stores VALUES (23, 14, 100);
INSERT INTO stores VALUES (24, 14, 100);
INSERT INTO stores VALUES (25, 14, 100);
INSERT INTO stores VALUES (26, 14, 0);
INSERT INTO stores VALUES (27, 14, 0);
INSERT INTO stores VALUES (28, 14, 0);
INSERT INTO stores VALUES (29, 14, 0);
INSERT INTO stores VALUES (30, 14, 0);
INSERT INTO stores VALUES (31, 14, 10);
INSERT INTO stores VALUES (32, 14, 10);
INSERT INTO stores VALUES (33, 14, 10);
INSERT INTO stores VALUES (34, 14, 10);
INSERT INTO stores VALUES (35, 14, 10);
INSERT INTO stores VALUES (36, 14, 10);
INSERT INTO stores VALUES (37, 14, 10);
INSERT INTO stores VALUES (38, 14, 10);
INSERT INTO stores VALUES (39, 14, 10);
INSERT INTO stores VALUES (40, 14, 100);
INSERT INTO stores VALUES (41, 14, 100);
INSERT INTO stores VALUES (42, 14, 100);
INSERT INTO stores VALUES (43, 14, 100);
INSERT INTO stores VALUES (44, 14, 100);
INSERT INTO stores VALUES (45, 14, 100);

INSERT INTO stores VALUES (1, 15, 0);
INSERT INTO stores VALUES (2, 15, 0);
INSERT INTO stores VALUES (3, 15, 0);
INSERT INTO stores VALUES (4, 15, 0);
INSERT INTO stores VALUES (5, 15, 1);
INSERT INTO stores VALUES (6, 15, 1);
INSERT INTO stores VALUES (7, 15, 1);
INSERT INTO stores VALUES (8, 15, 1);
INSERT INTO stores VALUES (9, 15, 1);
INSERT INTO stores VALUES (10, 15, 1);
INSERT INTO stores VALUES (11, 15, 1);
INSERT INTO stores VALUES (12, 15, 1);
INSERT INTO stores VALUES (13, 15, 1);
INSERT INTO stores VALUES (14, 15, 1);
INSERT INTO stores VALUES (15, 15, 1);
INSERT INTO stores VALUES (16, 15, 100);
INSERT INTO stores VALUES (17, 15, 100);
INSERT INTO stores VALUES (18, 15, 100);
INSERT INTO stores VALUES (19, 15, 100);
INSERT INTO stores VALUES (20, 15, 100);
INSERT INTO stores VALUES (21, 15, 100);
INSERT INTO stores VALUES (22, 15, 100);
INSERT INTO stores VALUES (23, 15, 100);
INSERT INTO stores VALUES (24, 15, 100);
INSERT INTO stores VALUES (25, 15, 100);
INSERT INTO stores VALUES (26, 15, 0);
INSERT INTO stores VALUES (27, 15, 0);
INSERT INTO stores VALUES (28, 15, 0);
INSERT INTO stores VALUES (29, 15, 0);
INSERT INTO stores VALUES (30, 15, 0);
INSERT INTO stores VALUES (31, 15, 10);
INSERT INTO stores VALUES (32, 15, 10);
INSERT INTO stores VALUES (33, 15, 10);
INSERT INTO stores VALUES (34, 15, 10);
INSERT INTO stores VALUES (35, 15, 10);
INSERT INTO stores VALUES (36, 15, 10);
INSERT INTO stores VALUES (37, 15, 10);
INSERT INTO stores VALUES (38, 15, 10);
INSERT INTO stores VALUES (39, 15, 10);
INSERT INTO stores VALUES (40, 15, 100);
INSERT INTO stores VALUES (41, 15, 100);
INSERT INTO stores VALUES (42, 15, 100);
INSERT INTO stores VALUES (43, 15, 100);
INSERT INTO stores VALUES (44, 15, 100);
INSERT INTO stores VALUES (45, 15, 100);

INSERT INTO cart VALUES (1, '1ga');
INSERT INTO cart VALUES (2, '1ga');
INSERT INTO cart VALUES (3, '1ga');
INSERT INTO cart VALUES (4, '1ga');
INSERT INTO cart VALUES (5, '1ga');
INSERT INTO cart VALUES (6, '1ga');
INSERT INTO cart VALUES (7, '1ga');

INSERT INTO cart VALUES (8, '1na');
INSERT INTO cart VALUES (9, '1na');
INSERT INTO cart VALUES (10, '1na');
INSERT INTO cart VALUES (11, '1na');
INSERT INTO cart VALUES (12, '1na');
INSERT INTO cart VALUES (13, '1na');
INSERT INTO cart VALUES (14, '1na');

INSERT INTO cart VALUES (15, '1da');
INSERT INTO cart VALUES (16, '1da');
INSERT INTO cart VALUES (17, '1da');
INSERT INTO cart VALUES (18, '1da');
INSERT INTO cart VALUES (19, '1da');
INSERT INTO cart VALUES (20, '1da');
INSERT INTO cart VALUES (21, '1da');

INSERT INTO cart VALUES (22, '1ra');
INSERT INTO cart VALUES (23, '1ra');
INSERT INTO cart VALUES (24, '1ra');
INSERT INTO cart VALUES (25, '1ra');
INSERT INTO cart VALUES (26, '1ra');
INSERT INTO cart VALUES (27, '1ra');
INSERT INTO cart VALUES (28, '1ra');

INSERT INTO cart VALUES (29, '1ma');
INSERT INTO cart VALUES (30, '1ma');
INSERT INTO cart VALUES (31, '1ma');
INSERT INTO cart VALUES (32, '1ma');
INSERT INTO cart VALUES (33, '1ma');
INSERT INTO cart VALUES (34, '1ma');
INSERT INTO cart VALUES (35, '1ma');

INSERT INTO cart VALUES (36, '1ba');
INSERT INTO cart VALUES (37, '1ba');
INSERT INTO cart VALUES (38, '1ba');
INSERT INTO cart VALUES (39, '1ba');
INSERT INTO cart VALUES (40, '1ba');
INSERT INTO cart VALUES (41, '1ba');
INSERT INTO cart VALUES (42, '1ba');

INSERT INTO cart VALUES (43, '1sa');
INSERT INTO cart VALUES (44, '1sa');
INSERT INTO cart VALUES (45, '1sa');
INSERT INTO cart VALUES (46, '1sa');
INSERT INTO cart VALUES (47, '1sa');
INSERT INTO cart VALUES (48, '1sa');
INSERT INTO cart VALUES (49, '1sa');

INSERT INTO cart VALUES (50, '1a');
INSERT INTO cart VALUES (51, '1a');
INSERT INTO cart VALUES (52, '1a');
INSERT INTO cart VALUES (53, '1a');
INSERT INTO cart VALUES (54, '1a');
INSERT INTO cart VALUES (55, '1a');
INSERT INTO cart VALUES (56, '1a');

INSERT INTO cart VALUES (57, '1za');
INSERT INTO cart VALUES (58, '1za');
INSERT INTO cart VALUES (59, '1za');
INSERT INTO cart VALUES (60, '1za');
INSERT INTO cart VALUES (61, '1za');
INSERT INTO cart VALUES (62, '1za');
INSERT INTO cart VALUES (63, '1za');

INSERT INTO cart VALUES (64, '1cha');
INSERT INTO cart VALUES (65, '1cha');
INSERT INTO cart VALUES (66, '1cha');
INSERT INTO cart VALUES (67, '1cha');
INSERT INTO cart VALUES (68, '1cha');
INSERT INTO cart VALUES (69, '1cha');
INSERT INTO cart VALUES (70, '1cha');

INSERT INTO cart VALUES (71, '1ka');
INSERT INTO cart VALUES (72, '1ka');
INSERT INTO cart VALUES (73, '1ka');
INSERT INTO cart VALUES (74, '1ka');
INSERT INTO cart VALUES (75, '1ka');
INSERT INTO cart VALUES (76, '1ka');
INSERT INTO cart VALUES (77, '1ka');

INSERT INTO cart VALUES (78, '1ta');
INSERT INTO cart VALUES (79, '1ta');
INSERT INTO cart VALUES (80, '1ta');
INSERT INTO cart VALUES (81, '1ta');
INSERT INTO cart VALUES (82, '1ta');
INSERT INTO cart VALUES (83, '1ta');
INSERT INTO cart VALUES (84, '1ta');

INSERT INTO cart VALUES (85, '1pa');
INSERT INTO cart VALUES (86, '1pa');
INSERT INTO cart VALUES (87, '1pa');
INSERT INTO cart VALUES (88, '1pa');
INSERT INTO cart VALUES (89, '1pa');
INSERT INTO cart VALUES (90, '1pa');
INSERT INTO cart VALUES (91, '1pa');

INSERT INTO cart VALUES (92, '1ha');
INSERT INTO cart VALUES (93, '1ha');
INSERT INTO cart VALUES (94, '1ha');
INSERT INTO cart VALUES (95, '1ha');
INSERT INTO cart VALUES (96, '1ha');
INSERT INTO cart VALUES (97, '1ha');
INSERT INTO cart VALUES (98, '1ha');

INSERT INTO cart VALUES (99, '2ga');
INSERT INTO cart VALUES (100, '2ga');
INSERT INTO cart VALUES (101, '2ga');
INSERT INTO cart VALUES (102, '2ga');
INSERT INTO cart VALUES (103, '2ga');
INSERT INTO cart VALUES (104, '2ga');
INSERT INTO cart VALUES (105, '2ga');

INSERT INTO cart VALUES (106, '2na');
INSERT INTO cart VALUES (107, '2da');
INSERT INTO cart VALUES (108, '2ra');
INSERT INTO cart VALUES (109, '2ma');
INSERT INTO cart VALUES (110, '2ba');
INSERT INTO cart VALUES (111, '2sa');
INSERT INTO cart VALUES (112, '2a');
INSERT INTO cart VALUES (113, '2za');
INSERT INTO cart VALUES (114, '2cha');
INSERT INTO cart VALUES (115, '2ka');
INSERT INTO cart VALUES (116, '2ta');
INSERT INTO cart VALUES (117, '2pa');
INSERT INTO cart VALUES (118, '2ha');

INSERT INTO cart VALUES (119, '3ga');
INSERT INTO cart VALUES (120, '3na');
INSERT INTO cart VALUES (121, '3da');
INSERT INTO cart VALUES (122, '3ra');
INSERT INTO cart VALUES (123, '3ma');
INSERT INTO cart VALUES (124, '3ba');
INSERT INTO cart VALUES (125, '3sa');
INSERT INTO cart VALUES (126, '3a');
INSERT INTO cart VALUES (127, '3za');
INSERT INTO cart VALUES (128, '3cha');
INSERT INTO cart VALUES (129, '3ka');
INSERT INTO cart VALUES (130, '3ta');
INSERT INTO cart VALUES (131, '3pa');
INSERT INTO cart VALUES (132, '3ha');

INSERT INTO cart VALUES (133, '4ga');
INSERT INTO cart VALUES (134, '4na');
INSERT INTO cart VALUES (135, '4da');
INSERT INTO cart VALUES (136, '4ra');
INSERT INTO cart VALUES (137, '4ma');
INSERT INTO cart VALUES (138, '4ba');
INSERT INTO cart VALUES (139, '4sa');
INSERT INTO cart VALUES (140, '4a');

INSERT INTO cart VALUES (141, '1ga');
INSERT INTO cart VALUES (142, '1na');
INSERT INTO cart VALUES (143, '1da');
INSERT INTO cart VALUES (144, '1ra');
INSERT INTO cart VALUES (145, '1ma');
INSERT INTO cart VALUES (146, '1ba');
INSERT INTO cart VALUES (147, '1sa');
INSERT INTO cart VALUES (148, '1a');
INSERT INTO cart VALUES (149, '1za');
INSERT INTO cart VALUES (150, '1cha');

# now
INSERT INTO cart VALUES (151, '1ga');
INSERT INTO cart VALUES (152, '1na');
INSERT INTO cart VALUES (153, '1da');
INSERT INTO cart VALUES (154, '1ra');
INSERT INTO cart VALUES (155, '1ma');
INSERT INTO cart VALUES (156, '1ba');
INSERT INTO cart VALUES (157, '1sa');
INSERT INTO cart VALUES (158, '1a');
INSERT INTO cart VALUES (159, '1za');
INSERT INTO cart VALUES (160, '1cha');
INSERT INTO cart VALUES (161, '1ka');
INSERT INTO cart VALUES (162, '1ta');
INSERT INTO cart VALUES (163, '1pa');
INSERT INTO cart VALUES (164, '1ha');

INSERT INTO cart VALUES (165, '2ga');
INSERT INTO cart VALUES (166, '2na');
INSERT INTO cart VALUES (167, '2da');
INSERT INTO cart VALUES (168, '2ra');
INSERT INTO cart VALUES (169, '2ma');
INSERT INTO cart VALUES (170, '2ba');
INSERT INTO cart VALUES (171, '2sa');
INSERT INTO cart VALUES (172, '2a');
INSERT INTO cart VALUES (173, '2za');
INSERT INTO cart VALUES (174, '2cha');
INSERT INTO cart VALUES (175, '2ka');
INSERT INTO cart VALUES (176, '2ta');
INSERT INTO cart VALUES (177, '2pa');
INSERT INTO cart VALUES (178, '2ha');

INSERT INTO cart VALUES (179, '3ga');
INSERT INTO cart VALUES (180, '3na');
INSERT INTO cart VALUES (181, '3da');
INSERT INTO cart VALUES (182, '3ra');
INSERT INTO cart VALUES (183, '3ma');
INSERT INTO cart VALUES (184, '3ba');
INSERT INTO cart VALUES (185, '3sa');
INSERT INTO cart VALUES (186, '3a');
INSERT INTO cart VALUES (187, '3za');
INSERT INTO cart VALUES (188, '3cha');
INSERT INTO cart VALUES (189, '3ka');
INSERT INTO cart VALUES (190, '3ta');
INSERT INTO cart VALUES (191, '3pa');
INSERT INTO cart VALUES (192, '3ha');

INSERT INTO cart VALUES (193, '4ga');
INSERT INTO cart VALUES (194, '4na');
INSERT INTO cart VALUES (195, '4da');
INSERT INTO cart VALUES (196, '4ra');
INSERT INTO cart VALUES (197, '4ma');
INSERT INTO cart VALUES (198, '4ba');
INSERT INTO cart VALUES (199, '4sa');
INSERT INTO cart VALUES (200, '4a');
INSERT INTO cart VALUES (201, '4za');
INSERT INTO cart VALUES (202, '4cha');
INSERT INTO cart VALUES (203, '4ka');
INSERT INTO cart VALUES (204, '4ta');
INSERT INTO cart VALUES (205, '4pa');

INSERT INTO putin VALUES (1,1,1);
INSERT INTO putin VALUES (2,3,2);
INSERT INTO putin VALUES (3,3,1);
INSERT INTO putin VALUES (4,3,2);
INSERT INTO putin VALUES (5,3,1);
INSERT INTO putin VALUES (6,4,2);
INSERT INTO putin VALUES (7,7,1);
INSERT INTO putin VALUES (8,8,2);
INSERT INTO putin VALUES (9,9,1);
INSERT INTO putin VALUES (10,10,2);
INSERT INTO putin VALUES (11,11,1);
INSERT INTO putin VALUES (12,12,2);
INSERT INTO putin VALUES (13,13,1);
INSERT INTO putin VALUES (14,5,2);
INSERT INTO putin VALUES (15,5,1);
INSERT INTO putin VALUES (16,5,2);
INSERT INTO putin VALUES (17,17,1);
INSERT INTO putin VALUES (18,18,2);
INSERT INTO putin VALUES (19,19,1);
INSERT INTO putin VALUES (20,20,2);
INSERT INTO putin VALUES (21,21,1);
INSERT INTO putin VALUES (22,22,2);
INSERT INTO putin VALUES (23,23,1);
INSERT INTO putin VALUES (24,24,2);
INSERT INTO putin VALUES (25,25,1);
INSERT INTO putin VALUES (26,26,2);
INSERT INTO putin VALUES (27,27,1);
INSERT INTO putin VALUES (28,28,2);
INSERT INTO putin VALUES (29,29,1);
INSERT INTO putin VALUES (30,30,2);
INSERT INTO putin VALUES (31,31,1);
INSERT INTO putin VALUES (32,32,2);
INSERT INTO putin VALUES (33,33,1);
INSERT INTO putin VALUES (34,34,2);
INSERT INTO putin VALUES (35,35,1);
INSERT INTO putin VALUES (36,36,2);
INSERT INTO putin VALUES (37,37,1);
INSERT INTO putin VALUES (38,38,2);
INSERT INTO putin VALUES (39,39,1);
INSERT INTO putin VALUES (40,40,2);
INSERT INTO putin VALUES (41,41,1);
INSERT INTO putin VALUES (42,42,2);
INSERT INTO putin VALUES (43,43,1);
INSERT INTO putin VALUES (44,44,2);
INSERT INTO putin VALUES (45,45,1);

INSERT INTO putin VALUES (46,1,1);
INSERT INTO putin VALUES (47,2,2);
INSERT INTO putin VALUES (48,3,1);
INSERT INTO putin VALUES (49,4,2);
INSERT INTO putin VALUES (50,5,1);
INSERT INTO putin VALUES (51,6,2);
INSERT INTO putin VALUES (52,7,1);
INSERT INTO putin VALUES (53,8,2);
INSERT INTO putin VALUES (54,9,1);
INSERT INTO putin VALUES (55,10,2);
INSERT INTO putin VALUES (56,11,1);
INSERT INTO putin VALUES (57,12,2);
INSERT INTO putin VALUES (58,13,1);
INSERT INTO putin VALUES (59,14,2);
INSERT INTO putin VALUES (60,15,1);
INSERT INTO putin VALUES (61,16,2);
INSERT INTO putin VALUES (62,17,1);
INSERT INTO putin VALUES (63,18,2);
INSERT INTO putin VALUES (64,19,1);
INSERT INTO putin VALUES (65,20,2);
INSERT INTO putin VALUES (66,21,1);
INSERT INTO putin VALUES (67,22,2);
INSERT INTO putin VALUES (68,23,1);
INSERT INTO putin VALUES (69,24,2);
INSERT INTO putin VALUES (70,25,1);
INSERT INTO putin VALUES (71,26,2);
INSERT INTO putin VALUES (72,27,1);
INSERT INTO putin VALUES (73,28,2);
INSERT INTO putin VALUES (74,29,1);
INSERT INTO putin VALUES (75,30,2);
INSERT INTO putin VALUES (76,31,1);
INSERT INTO putin VALUES (77,32,2);
INSERT INTO putin VALUES (78,33,1);
INSERT INTO putin VALUES (79,34,2);
INSERT INTO putin VALUES (80,35,1);
INSERT INTO putin VALUES (81,36,2);
INSERT INTO putin VALUES (82,37,1);
INSERT INTO putin VALUES (83,38,2);
INSERT INTO putin VALUES (84,39,1);
INSERT INTO putin VALUES (85,40,2);
INSERT INTO putin VALUES (86,41,1);
INSERT INTO putin VALUES (87,42,2);
INSERT INTO putin VALUES (88,43,1);
INSERT INTO putin VALUES (89,44,2);
INSERT INTO putin VALUES (90,45,1);

INSERT INTO putin VALUES (91,1,1);
INSERT INTO putin VALUES (92,2,2);
INSERT INTO putin VALUES (93,3,1);
INSERT INTO putin VALUES (94,4,2);
INSERT INTO putin VALUES (95,5,1);
INSERT INTO putin VALUES (96,6,2);
INSERT INTO putin VALUES (97,7,1);
INSERT INTO putin VALUES (98,8,2);
INSERT INTO putin VALUES (99,9,1);
INSERT INTO putin VALUES (100,10,2);
INSERT INTO putin VALUES (101,1,1);
INSERT INTO putin VALUES (102,2,2);
INSERT INTO putin VALUES (103,3,1);
INSERT INTO putin VALUES (104,4,2);
INSERT INTO putin VALUES (105,5,1);
INSERT INTO putin VALUES (106,6,2);
INSERT INTO putin VALUES (107,7,1);
INSERT INTO putin VALUES (108,8,2);
INSERT INTO putin VALUES (109,9,1);
INSERT INTO putin VALUES (110,10,2);
INSERT INTO putin VALUES (111,1,1);
INSERT INTO putin VALUES (112,2,2);
INSERT INTO putin VALUES (113,3,1);
INSERT INTO putin VALUES (114,4,2);
INSERT INTO putin VALUES (115,5,1);
INSERT INTO putin VALUES (116,6,2);
INSERT INTO putin VALUES (117,7,1);
INSERT INTO putin VALUES (118,8,2);
INSERT INTO putin VALUES (119,9,1);
INSERT INTO putin VALUES (120,10,2);
INSERT INTO putin VALUES (121,1,1);
INSERT INTO putin VALUES (122,2,2);
INSERT INTO putin VALUES (123,3,1);
INSERT INTO putin VALUES (124,4,2);
INSERT INTO putin VALUES (125,5,1);
INSERT INTO putin VALUES (126,6,2);
INSERT INTO putin VALUES (127,7,1);
INSERT INTO putin VALUES (128,8,2);
INSERT INTO putin VALUES (129,9,1);
INSERT INTO putin VALUES (130,10,2);
INSERT INTO putin VALUES (131,1,1);
INSERT INTO putin VALUES (132,2,2);
INSERT INTO putin VALUES (133,3,1);
INSERT INTO putin VALUES (134,4,2);
INSERT INTO putin VALUES (135,5,1);

INSERT INTO putin VALUES (136,1,1);
INSERT INTO putin VALUES (137,2,2);
INSERT INTO putin VALUES (138,3,1);
INSERT INTO putin VALUES (139,4,2);
INSERT INTO putin VALUES (140,5,1);
INSERT INTO putin VALUES (141,6,2);
INSERT INTO putin VALUES (142,7,1);
INSERT INTO putin VALUES (143,8,2);
INSERT INTO putin VALUES (144,9,1);
INSERT INTO putin VALUES (145,10,2);
INSERT INTO putin VALUES (146,11,1);
INSERT INTO putin VALUES (147,12,2);
INSERT INTO putin VALUES (148,13,1);
INSERT INTO putin VALUES (149,14,2);
INSERT INTO putin VALUES (150,15,1);
# test
INSERT INTO putin VALUES (2,3,1);
INSERT INTO putin VALUES (2,4,1);
INSERT INTO putin VALUES (2,5,1);
INSERT INTO putin VALUES (2,6,1);
INSERT INTO putin VALUES (2,7,1);

INSERT INTO putin VALUES (4,3,1);
INSERT INTO putin VALUES (4,4,1);
INSERT INTO putin VALUES (4,5,1);
INSERT INTO putin VALUES (4,6,1);
INSERT INTO putin VALUES (4,7,1);

INSERT INTO putin VALUES (93,3,1);
INSERT INTO putin VALUES (93,14,1);
INSERT INTO putin VALUES (93,15,1);
INSERT INTO putin VALUES (93,6,1);
INSERT INTO putin VALUES (93,7,1);

INSERT INTO putin VALUES (103,14,1);
INSERT INTO putin VALUES (103,15,1);
INSERT INTO putin VALUES (103,16,1);

INSERT INTO putin VALUES (133,16,1);
INSERT INTO putin VALUES (138,4,1);

# now
INSERT INTO putin VALUES (151,16,2);
INSERT INTO putin VALUES (151,15,2);
INSERT INTO putin VALUES (151,14,2);
INSERT INTO putin VALUES (151,13,2);
INSERT INTO putin VALUES (151,12,2);
INSERT INTO putin VALUES (151,11,2);
INSERT INTO putin VALUES (151,10,2);
INSERT INTO putin VALUES (151,9,2);
INSERT INTO putin VALUES (151,8,2);
INSERT INTO putin VALUES (151,7,2);

INSERT INTO putin VALUES (152,17,1);
INSERT INTO putin VALUES (152,18,1);
INSERT INTO putin VALUES (152,19,1);
INSERT INTO putin VALUES (152,20,1);
INSERT INTO putin VALUES (152,21,1);
INSERT INTO putin VALUES (152,22,1);
INSERT INTO putin VALUES (152,23,1);
INSERT INTO putin VALUES (152,24,1);
INSERT INTO putin VALUES (152,25,1);
INSERT INTO putin VALUES (152,26,1);

INSERT INTO putin VALUES (153,18,2);
INSERT INTO putin VALUES (153,17,2);
INSERT INTO putin VALUES (153,16,2);
INSERT INTO putin VALUES (153,15,2);
INSERT INTO putin VALUES (153,14,2);
INSERT INTO putin VALUES (153,13,2);
INSERT INTO putin VALUES (153,12,2);
INSERT INTO putin VALUES (153,11,2);
INSERT INTO putin VALUES (153,10,2);
INSERT INTO putin VALUES (153,9,2);

INSERT INTO putin VALUES (154,19,1);
INSERT INTO putin VALUES (154,20,1);
INSERT INTO putin VALUES (154,21,1);
INSERT INTO putin VALUES (154,22,1);
INSERT INTO putin VALUES (154,23,1);
INSERT INTO putin VALUES (154,24,1);
INSERT INTO putin VALUES (154,25,1);
INSERT INTO putin VALUES (154,26,1);
INSERT INTO putin VALUES (154,27,1);
INSERT INTO putin VALUES (154,28,1);

INSERT INTO putin VALUES (155,20,2);
INSERT INTO putin VALUES (155,19,2);
INSERT INTO putin VALUES (155,18,2);
INSERT INTO putin VALUES (155,17,2);
INSERT INTO putin VALUES (155,16,2);
INSERT INTO putin VALUES (155,15,2);
INSERT INTO putin VALUES (155,14,2);
INSERT INTO putin VALUES (155,13,2);
INSERT INTO putin VALUES (155,12,2);
INSERT INTO putin VALUES (155,11,2);

INSERT INTO putin VALUES (156,21,1);
INSERT INTO putin VALUES (156,22,1);
INSERT INTO putin VALUES (156,23,1);
INSERT INTO putin VALUES (156,24,1);
INSERT INTO putin VALUES (156,25,1);
INSERT INTO putin VALUES (156,26,1);
INSERT INTO putin VALUES (156,27,1);
INSERT INTO putin VALUES (156,28,1);
INSERT INTO putin VALUES (156,29,1);
INSERT INTO putin VALUES (156,30,1);

INSERT INTO putin VALUES (157,22,2);
INSERT INTO putin VALUES (157,21,2);
INSERT INTO putin VALUES (157,20,2);
INSERT INTO putin VALUES (157,19,2);
INSERT INTO putin VALUES (157,18,2);
INSERT INTO putin VALUES (157,17,2);
INSERT INTO putin VALUES (157,16,2);
INSERT INTO putin VALUES (157,15,2);
INSERT INTO putin VALUES (157,14,2);
INSERT INTO putin VALUES (157,13,2);

INSERT INTO putin VALUES (158,23,1);
INSERT INTO putin VALUES (158,24,1);
INSERT INTO putin VALUES (158,25,1);
INSERT INTO putin VALUES (158,26,1);
INSERT INTO putin VALUES (158,27,1);
INSERT INTO putin VALUES (158,28,1);
INSERT INTO putin VALUES (158,29,1);
INSERT INTO putin VALUES (158,30,1);
INSERT INTO putin VALUES (158,31,1);
INSERT INTO putin VALUES (158,32,1);

INSERT INTO putin VALUES (159,24,2);
INSERT INTO putin VALUES (159,23,2);
INSERT INTO putin VALUES (159,22,2);
INSERT INTO putin VALUES (159,21,2);
INSERT INTO putin VALUES (159,20,2);
INSERT INTO putin VALUES (159,19,2);
INSERT INTO putin VALUES (159,18,2);
INSERT INTO putin VALUES (159,17,2);
INSERT INTO putin VALUES (159,16,2);
INSERT INTO putin VALUES (159,15,2);

INSERT INTO putin VALUES (160,25,1);
INSERT INTO putin VALUES (160,26,1);
INSERT INTO putin VALUES (160,27,1);
INSERT INTO putin VALUES (160,28,1);
INSERT INTO putin VALUES (160,29,1);
INSERT INTO putin VALUES (160,30,1);
INSERT INTO putin VALUES (160,31,1);
INSERT INTO putin VALUES (160,32,1);
INSERT INTO putin VALUES (160,33,1);
INSERT INTO putin VALUES (160,34,1);

INSERT INTO putin VALUES (161,36,2);
INSERT INTO putin VALUES (162,37,1);
INSERT INTO putin VALUES (163,38,2);
INSERT INTO putin VALUES (164,39,1);
INSERT INTO putin VALUES (165,40,2);
INSERT INTO putin VALUES (166,8,1);
INSERT INTO putin VALUES (167,42,2);
INSERT INTO putin VALUES (168,43,1);
INSERT INTO putin VALUES (169,44,2);
INSERT INTO putin VALUES (170,45,1);

INSERT INTO orders VALUES (1,1,'2018-10-22');
INSERT INTO orders VALUES (2,2,'2018-10-22');
INSERT INTO orders VALUES (3,3,'2018-10-22');
INSERT INTO orders VALUES (4,4,'2018-10-22');
INSERT INTO orders VALUES (5,4,'2018-10-22');
INSERT INTO orders VALUES (6,4,'2018-10-22');
INSERT INTO orders VALUES (7,4,'2018-09-22');
INSERT INTO orders VALUES (8,8,'2018-09-22');
INSERT INTO orders VALUES (9,9,'2018-09-22');
INSERT INTO orders VALUES (10,10,'2018-09-22');

INSERT INTO orders VALUES (11,11,'2018-09-22');
INSERT INTO orders VALUES (12,12,'2018-09-22');
INSERT INTO orders VALUES (13,13,'2018-08-22');
INSERT INTO orders VALUES (14,14,'2018-08-22');
INSERT INTO orders VALUES (15,2,'2018-08-22');
INSERT INTO orders VALUES (16,1,'2018-08-22');
INSERT INTO orders VALUES (17,1,'2018-08-22');
INSERT INTO orders VALUES (18,1,'2018-08-22');
INSERT INTO orders VALUES (19,4,'2018-07-22');
INSERT INTO orders VALUES (20,5,'2018-07-22');

INSERT INTO orders VALUES (21,6,'2018-07-22');
INSERT INTO orders VALUES (22,7,'2018-07-22');
INSERT INTO orders VALUES (23,8,'2018-07-22');
INSERT INTO orders VALUES (24,9,'2018-07-22');
INSERT INTO orders VALUES (25,10,'2018-07-22');
INSERT INTO orders VALUES (26,11,'2018-06-22');
INSERT INTO orders VALUES (27,12,'2018-06-22');
INSERT INTO orders VALUES (28,13,'2018-06-22');
INSERT INTO orders VALUES (29,14,'2018-06-22');
INSERT INTO orders VALUES (30,15,'2018-06-22');

INSERT INTO orders VALUES (31,1,'2018-06-22');
INSERT INTO orders VALUES (32,2,'2018-05-22');
INSERT INTO orders VALUES (33,3,'2018-05-22');
INSERT INTO orders VALUES (34,4,'2018-05-22');
INSERT INTO orders VALUES (35,5,'2018-05-22');
INSERT INTO orders VALUES (36,6,'2018-05-22');
INSERT INTO orders VALUES (37,7,'2018-05-22');
INSERT INTO orders VALUES (38,8,'2018-04-22');
INSERT INTO orders VALUES (39,9,'2018-04-22');
INSERT INTO orders VALUES (40,10,'2018-04-22');

INSERT INTO orders VALUES (41,11,'2018-04-22');
INSERT INTO orders VALUES (42,12,'2018-04-22');
INSERT INTO orders VALUES (43,13,'2018-04-22');
INSERT INTO orders VALUES (44,14,'2018-04-22');
INSERT INTO orders VALUES (45,15,'2018-04-22');
INSERT INTO orders VALUES (46,1,'2018-03-22');
INSERT INTO orders VALUES (47,2,'2018-03-22');
INSERT INTO orders VALUES (48,3,'2018-03-22');
INSERT INTO orders VALUES (49,4,'2018-03-22');
INSERT INTO orders VALUES (50,5,'2018-03-22');

INSERT INTO orders VALUES (51,6,'2018-03-22');
INSERT INTO orders VALUES (52,7,'2018-03-22');
INSERT INTO orders VALUES (53,8,'2018-02-22');
INSERT INTO orders VALUES (54,9,'2018-02-22');
INSERT INTO orders VALUES (55,10,'2018-02-22');
INSERT INTO orders VALUES (56,11,'2018-02-22');
INSERT INTO orders VALUES (57,12,'2018-02-22');
INSERT INTO orders VALUES (58,13,'2018-02-22');
INSERT INTO orders VALUES (59,14,'2018-01-22');
INSERT INTO orders VALUES (60,15,'2018-01-22');

INSERT INTO orders VALUES (61,1,'2018-01-22');
INSERT INTO orders VALUES (62,2,'2018-01-22');
INSERT INTO orders VALUES (63,3,'2018-01-22');
INSERT INTO orders VALUES (64,4,'2018-01-22');
INSERT INTO orders VALUES (65,5,'2017-12-22');
INSERT INTO orders VALUES (66,6,'2017-12-22');
INSERT INTO orders VALUES (67,7,'2017-12-22');
INSERT INTO orders VALUES (68,8,'2017-12-22');
INSERT INTO orders VALUES (69,9,'2017-12-22');
INSERT INTO orders VALUES (70,10,'2017-12-22');

INSERT INTO orders VALUES (71,11,'2017-11-22');
INSERT INTO orders VALUES (72,12,'2017-11-22');
INSERT INTO orders VALUES (73,13,'2017-11-22');
INSERT INTO orders VALUES (74,14,'2017-11-22');
INSERT INTO orders VALUES (75,15,'2017-11-22');
INSERT INTO orders VALUES (76,1,'2017-11-22');
INSERT INTO orders VALUES (77,2,'2017-11-22');
INSERT INTO orders VALUES (78,3,'2017-10-22');
INSERT INTO orders VALUES (79,4,'2017-10-22');
INSERT INTO orders VALUES (80,5,'2017-10-22');

INSERT INTO orders VALUES (81,6,'2017-10-22');
INSERT INTO orders VALUES (82,7,'2017-10-22');
INSERT INTO orders VALUES (83,8,'2017-10-22');
INSERT INTO orders VALUES (84,9,'2017-09-22');
INSERT INTO orders VALUES (85,10,'2017-09-22');
INSERT INTO orders VALUES (86,11,'2017-09-22');
INSERT INTO orders VALUES (87,12,'2017-09-22');
INSERT INTO orders VALUES (88,13,'2017-09-22');
INSERT INTO orders VALUES (89,14,'2017-09-22');
INSERT INTO orders VALUES (90,15,'2017-08-22');

INSERT INTO orders VALUES (91,1,'2017-08-22');
INSERT INTO orders VALUES (92,2,'2017-08-22');
INSERT INTO orders VALUES (93,3,'2017-08-22');
INSERT INTO orders VALUES (94,4,'2017-08-22');
INSERT INTO orders VALUES (95,5,'2017-08-22');
INSERT INTO orders VALUES (96,6,'2017-07-22');
INSERT INTO orders VALUES (97,7,'2017-07-22');
INSERT INTO orders VALUES (98,8,'2017-07-22');
INSERT INTO orders VALUES (99,9,'2017-07-22');
INSERT INTO orders VALUES (100,10,'2017-07-22');

INSERT INTO orders VALUES (101,11,'2017-07-22');
INSERT INTO orders VALUES (102,12,'2017-07-22');
INSERT INTO orders VALUES (103,13,'2017-06-22');
INSERT INTO orders VALUES (104,14,'2017-06-22');
INSERT INTO orders VALUES (105,15,'2017-06-22');
INSERT INTO orders VALUES (106,1,'2017-06-22');
INSERT INTO orders VALUES (107,2,'2017-06-22');
INSERT INTO orders VALUES (108,3,'2017-06-22');
INSERT INTO orders VALUES (109,4,'2017-05-22');
INSERT INTO orders VALUES (110,5,'2017-05-22');

INSERT INTO orders VALUES (111,6,'2017-05-22');
INSERT INTO orders VALUES (112,7,'2017-05-22');
INSERT INTO orders VALUES (113,8,'2017-05-22');
INSERT INTO orders VALUES (114,9,'2017-05-22');
INSERT INTO orders VALUES (115,10,'2017-04-22');
INSERT INTO orders VALUES (116,11,'2017-04-22');
INSERT INTO orders VALUES (117,12,'2017-04-22');
INSERT INTO orders VALUES (118,13,'2017-04-22');
INSERT INTO orders VALUES (119,14,'2017-04-22');
INSERT INTO orders VALUES (120,15,'2017-04-22');

INSERT INTO orders VALUES (121,1,'2017-03-22');
INSERT INTO orders VALUES (122,2,'2017-03-22');
INSERT INTO orders VALUES (123,3,'2017-03-22');
INSERT INTO orders VALUES (124,4,'2017-03-22');
INSERT INTO orders VALUES (125,5,'2017-03-22');
INSERT INTO orders VALUES (126,6,'2017-03-22');
INSERT INTO orders VALUES (127,7,'2017-03-22');
INSERT INTO orders VALUES (128,8,'2017-02-22');
INSERT INTO orders VALUES (129,9,'2017-02-22');
INSERT INTO orders VALUES (130,10,'2017-02-22');

INSERT INTO orders VALUES (131,11,'2017-02-22');
INSERT INTO orders VALUES (132,12,'2017-02-22');
INSERT INTO orders VALUES (133,13,'2017-02-22');
INSERT INTO orders VALUES (134,14,'2017-01-22');
INSERT INTO orders VALUES (135,15,'2017-01-22');
INSERT INTO orders VALUES (136,1,'2017-01-22');
INSERT INTO orders VALUES (137,2,'2017-01-22');
INSERT INTO orders VALUES (138,3,'2017-01-22');
INSERT INTO orders VALUES (139,4,'2017-01-22');
INSERT INTO orders VALUES (140,5,'2017-12-22');

INSERT INTO orders VALUES (141,6,'2017-12-22');
INSERT INTO orders VALUES (142,8,'2017-12-22');
INSERT INTO orders VALUES (143,8,'2017-12-22');
INSERT INTO orders VALUES (144,9,'2017-12-22');
INSERT INTO orders VALUES (145,10,'2017-12-22');
INSERT INTO orders VALUES (146,10,'2017-11-22');
INSERT INTO orders VALUES (147,10,'2017-11-22');
INSERT INTO orders VALUES (148,10,'2017-11-22');
INSERT INTO orders VALUES (149,9,'2017-11-22');
INSERT INTO orders VALUES (150,9,'2017-11-22');

ALTER TABLE item ADD FOREIGN KEY (Iprovider) REFERENCES provider(Pid);
ALTER TABLE item ADD FOREIGN KEY (Icategory) REFERENCES category(Catid);
ALTER TABLE cart ADD FOREIGN KEY (Cusid) REFERENCES customer(Cusid);
ALTER TABLE orders ADD FOREIGN KEY (CartID) REFERENCES cart(CartID);
ALTER TABLE putin ADD FOREIGN KEY (CartID) REFERENCES cart(CartID);
ALTER TABLE orders ADD FOREIGN KEY (RID) REFERENCES retailer(RID);
ALTER TABLE putin ADD FOREIGN KEY (ItemID) REFERENCES item(ItemID);
ALTER TABLE stores ADD FOREIGN KEY (ItemID) REFERENCES item(ItemID);
ALTER TABLE stores ADD FOREIGN KEY (RID) REFERENCES retailer(RID);

# Q1
SELECT count(*)
FROM (SELECT I.Iname, sum(Icount)
FROM stores S, item I
WHERE S.ItemID = I.ItemID
GROUP BY S.ItemID
HAVING sum(Icount)<20) res;

# Q2
SELECT count(*)
FROM customer;

# Q3
SELECT C.Cusname
FROM customer C, orders O, cart T
WHERE O.CartID = T.CartID
AND T.Cusid = C.Cusid
GROUP BY C.Cusid
HAVING count(T.Cusid) > 7;

# Q4
SELECT R.Astate, count(O.RID)
FROM retailer R, orders O
WHERE R.RID = O.RID
AND O.Odate > '2018-04-28'
GROUP BY R.RID
ORDER BY count(O.RID) DESC
LIMIT 3;

# Q5
SELECT I.Iname
FROM cart T, orders O, putin P, item I
WHERE T.CusID IN (
SELECT C.CusID
FROM customer C, cart T, orders O
WHERE T.CartID = O.CartID
AND T.CusID = C.CusID
GROUP BY C.CusID
HAVING count(O.CartID) >= 7)
AND O.CartID = T.CartID
AND P.CartID = T.CartID
AND P.ItemID = I.ItemID
GROUP BY I.ItemID
ORDER BY count(I.ItemID) DESC
LIMIT 1;

# Q6
SELECT I.Iname
FROM customer C, cart T, putin P, item I
WHERE C.cusID = T.cusID
AND C.cusID IN (
	SELECT C.cusID
	FROM customer C, (
		SELECT C.cusID
		FROM cart T, customer C
		WHERE T.cartID NOT IN (
			SELECT P.cartID
			FROM putin P
			)
		AND C.cusid = T.cusid
		) R
	WHERE R.cusid = C.cusID
	)
AND T.cartID IN (
	SELECT T.cartID
	FROM cart T, orders O
	WHERE T.cartID = O.cartID
	)
AND T.cartID = P.cartID
AND P.itemID = I.itemID
GROUP BY I.itemID
ORDER BY sum(I.Iprice*P.Icount) DESC
LIMIT 5;



# Q7
SELECT C.major, C.sub
FROM category C, customer U, cart T, orders O, putin P, item I
WHERE T.cartID = O.cartID
AND T.cusID = U.cusID
AND T.cartID = P.cartID
AND P.itemID = I.itemID
AND I.Icategory = C.catid
AND U.sex = 'M'
GROUP BY C.catid
ORDER BY count(C.catid) DESC
LIMIT 1;

# Q8
SELECT I.Iname
FROM customer C, cart T, orders O, item I, putin P
WHERE C.cusid = T.cusid
AND T.cartID = O.cartID
AND T.cartID = P.cartID
AND P.itemID = I.itemID
AND C.age >= 20
AND C.age < 30
GROUP BY I.itemID
ORDER BY count(I.itemID) DESC
LIMIT 1;

CREATE VIEW bestItem AS
SELECT I.Iname
FROM customer C, cart T, orders O, item I, putin P
WHERE C.cusid = T.cusid
AND T.cartID = O.cartID
AND T.cartID = P.cartID
AND P.itemID = I.itemID
AND C.age >= 20
AND C.age < 30
GROUP BY I.itemID
ORDER BY count(I.itemID) DESC
LIMIT 1;
/*-----------------------------------------------------*/
CREATE VIEW orderCartID AS
SELECT O.cartID
FROM item I, orders O, cart T, putin P
WHERE I.Iname in (
	select * from
	(
		(
		SELECT I.Iname
		FROM customer C, cart T, orders O, item I, putin P
		WHERE C.cusid = T.cusid
		AND T.cartID = O.cartID
		AND T.cartID = P.cartID
		AND P.itemID = I.itemID
		AND C.age >= 20
		AND C.age < 30
		GROUP BY I.itemID
		ORDER BY count(I.itemID) DESC
		LIMIT 1
		) as res
	)
)
AND T.cartID = O.cartID
AND T.cartID = P.cartID
AND P.itemID = I.itemID;

SELECT I.Iname
FROM cart T, putin P, orderCartID R, item I
WHERE R.cartID = T.cartID
AND T.cartID = P.cartID
AND P.itemID = I.itemID
AND I.itemID NOT IN (
	SELECT * FROM bestItem
)
GROUP BY I.itemID
ORDER BY count(I.itemID) DESC
LIMIT 5;

# Q9
SELECT DISTINCT I.Iname
FROM item I, (
	SELECT I.Iname, I.ItemID, sum(Icount) AS allcount
	FROM stores S, item I
	WHERE I.ItemID = S.ItemID
	GROUP BY I.ItemID
) STORERES, (
	SELECT I.Iname, I.ItemID, sum(P.Icount) AS ordercount
	FROM cart T, putin P, item I
	WHERE T.cartID IN (
		SELECT T.cartID
		FROM cart T
		WHERE T.cartID NOT IN (
			SELECT O.cartID
			FROM cart T, orders O
			WHERE T.cartID = O.cartID
		)
	)
	AND T.cartID = P.cartID
	AND P.itemID = I.itemID
	GROUP BY I.ItemID
) ORDERRES
WHERE STORERES.itemID = I.itemID
AND ORDERRES.itemID = I.itemID
AND STORERES.allcount < ORDERRES.ordercount;

# Q10
CREATE VIEW highest AS
SELECT I.itemID
FROM item I, orders O, putin P
WHERE P.cartID = O.cartID
AND P.itemID = I.itemID
GROUP BY I.itemID
ORDER BY sum(I.Iprice * P.Icount) DESC
LIMIT 1;

SELECT C.cusid, C.cusname
FROM customer C, highest H, cart T, putin P
WHERE T.cartID NOT IN (
	SELECT O.cartID
	FROM cart T, orders O
	WHERE T.cartID = O.cartID
)
AND C.cusid = T.cusid
AND T.cartID = P.cartID
AND P.itemID = H.itemID;

/*-----------------------------------*/

SELECT DISTINCT C.cusid, C.cusname
FROM customer C, cart T, putin P
WHERE T.cartID NOT IN (
	SELECT O.cartID
	FROM cart T, orders O
	WHERE T.cartID = O.cartID
)
AND C.cusid = T.cusid
AND T.cartID = P.cartID
AND P.itemID IN (
	SELECT I.itemID
	FROM item I, category C
	WHERE C.catid IN (
		SELECT C.catid
		FROM highest H, category C, item I
		WHERE H.itemID = I.itemID
		AND I.Icategory = C.catid
	)
	AND C.catid = I.Icategory
);
