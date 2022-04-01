#删除数据库xz，如果存在
drop database if exists xz;
#创建数据库xz
create database xz;
#进入数据库xz
use xz;
#创建数据表user
create table user(
    uid int,
    uname varchar(20),
    upwd varchar(20),
    email varchar(20),
    phone int(13),
    user_name varchar(20),
    reg_time varchar(10)
);
#向数据表user中添加数据
insert into user values
    ('1','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123'),
    ('2','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123'),
    ('3','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123');