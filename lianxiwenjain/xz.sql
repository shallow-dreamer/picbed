#修改CMD的编码
#chcp 65001
#设置客户端连接服务器编码为utf8
set names utf8;
#删除数据库xz，如果存在
drop database if exists xz;
#创建数据库xz，设置字符集编码为utf8
create database xz charset = utf8;
#进入数据库xz
use xz;
#创建数据表user
create table user(
    uid int,
    uname varchar(20),
    upwd varchar(20),
    email varchar(20),
    phone int,
    user_name varchar(20),
    reg_time varchar(10) #2000-00-00
)default charset = utf8;
#查询数据表结果
desc user;
#向数据表user中添加数据
insert into user values
    ('1','钢结构','gyigyi3g12','sdq@asda.com','231231232312321321','weqe','1212-32113-123'),
    ('2','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123'),
    ('3','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123');
#修改数据
update user set upwd = "666666",phone = "1313413413214141" where uid = 3;
#删除数据
delete from user where uid = 2;
#查询数据表数据
select * from user;
#显示表和数据库设置参数
show create table user \G;
show create database xz \G;