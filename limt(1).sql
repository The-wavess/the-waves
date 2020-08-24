set   names utf8;
drop database if exists  limt;
create database limt charset=utf8;
use limt;
create table move_row(
sid bigint,
move_name varchar(20),
move_director varchar(10),
move_actor varchar(10),
move_type varchar(10),
move_distrit varchar(10),
move_img varchar(50),
move_time varchar(18),
move_saray decimal(8,2),
move_momment decimal(2.2)
	);
insert into move_row values(1,'斗罗大陆','罗志祥','薛之谦，刘宇','动漫','中国','img/0-12.jpg','2011-5-3','59.9',4.5);
insert into move_row values(2,'妙先生','李凌霄','小连杀，宝慕中阳','动漫，奇幻，冒险','中国大陆','img/0-12.jpg','2020-7-31','50.9',4.9);
insert into move_row values(3,'哈利.波特','克里斯.哥伦布','丹尼尔，雷德克','奇幻，冒险','中国大陆','img/0-12.jpg','2020-8-14','50.9',4.9);
create table move_name(
sid bigint,
name varchar(20),
address varchar(50),
phone int,
move_desc varchar(200),
img varchar(50)
);
insert into move_name values(1,'万达影院','雁塔区万达广场','029-8964052/029-89640501','雁塔区韦一街中路22号','img/2.jpg');
insert into move_name values(2,'香港未来主题','金沙国际购物广场','029-99564/029-9456231','雁塔区长安中路65号小寨金莎国际(海港城北侧)','img/2.jpg');
insert into move_name values(3,'中国飞尚国际影城','新城区','029-65655511','新城区长乐西路益田假日世界7层（地铁1号线朝阳门站B出口）','img/2.jpg');
insert into move_name values(4,'GGV影城','未央区','029-65596511','未央区三桥新街1076号华润万象城4层','img/2.jpg');
insert into move_name values(5,'金逸影城','长安区','029-6961511','长安区西长安街澳堡时代广场','img/2.jpg');
create table coupon(
con_id bigint,
move_type varchar(200),
cut decimal(9,2),
target decimal(9,2)
);
insert into coupon values(1,'满减',3.00,15.00);
insert into coupon values(2,'满减',10.00,40.00);
insert into coupon values(3,'满减',20.00,60.00);
insert into coupon values(3,'满减',50.00,100.00);

select * from  coupon;
