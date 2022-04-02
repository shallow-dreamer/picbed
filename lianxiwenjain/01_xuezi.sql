#设置连接编码
set names utf8;
#丢弃数据库xuezi，如果存在
drop database if exists xuezi;
#创建数据库xuezi
create database xuezi default charset = 'utf8';
#进入数据库
use xuezi;
#创建数据表laptop
create table laptop(
    lid int primary key,
    title varchar(50),
    price decimal(10,2),
    count mediumint,
    stime datetime,
    isindex boolean
)default charset = 'utf8';
#插入数据
insert into laptop values
    (1,'手机',9999999.99,100000,20201111121212,true),
    (2,'爪机',99999999.99,10000,20201111,false),
    (3,'机',999999.99,10000,20201111,true),
    (4,'电脑',999999.99,1000,20201111,1),
    (5,'手',99999.99,1000,20201111,0);
#查询结果
select * from laptop;
    