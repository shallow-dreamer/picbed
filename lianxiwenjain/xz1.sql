#设置连接编码
set names utf8;
#丢弃数据库xz,如果存在
drop database if exists xz;
#创建数据库xz,设置编码为utf8
create database xz default charset = 'utf8';
#使用数据库xz
use xz;
#创建数据表faliy、laptop,设置编码为utf8,设置外键约束laptop为从表,faliy为主表
create table faliy(
    fid int primary key,
    fname varchar(10)
)default charset = 'utf8';
create table laptop(
    lid int primary key,
    lanme varchar(20),
    familid int,
    isnosale boolean,
    constraint fk_fid_faliy foreign key(familid) references faliy(fid)
)default charset = 'utf8';
#向faliy中插入数据
insert into faliy values
    (10,'小米'),
    (20,'华为'),
    (30,'戴尔'),
    (40,'联想');
#向laptop中插入数据
insert into laptop values
    (1,'小米 air 10',10,true),
    (2,'小米 Pro 15.6',10,true),
    (3,'华为 book',20,false),
    (4,'联想小新',40,true),
    (5,'戴尔3000',30,true);
#查询数据
select * from faliy;
delete from laptop where lid = 3;
select * from laptop;

