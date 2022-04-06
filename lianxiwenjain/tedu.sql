#设置连接编码为utf8
set names utf8;
#丢弃数据库tedu,如果存在
drop database if exists tedu;
#创建数据库tedu,设置编码为utf8
create database tedu default charset = "utf8";
#进入数据库
use tedu;
#创建数据表dept、emp,设置编码为utf8
create table dept(
    did int primary key auto_increment,
    dname varchar(10) unique
)default charset = "utf8";
create table emp(
    eid int primary key auto_increment,
    ename varchar(10) not null,
    sex boolean default 0,
    birthday date,
    salary decimal(7,2),
    deptid int,
    constraint ky_did_dept foreign key (deptid) references dept(did)
)default charset = "utf8";
alter table dept auto_increment=10;
-- desc dept;
-- desc emp;
#插入数据
insert into dept values
    (10,"研发部"),
    (20,"运营部"),
    (30,"市场部"),
    (40,"测试");
insert into emp values(null,'tao',default,'1973-7-15',50000,10);
INSERT INTO emp VALUES(NULL,'Tom',1,'1990-5-5',6000,20);
INSERT INTO emp VALUES(NULL,'Jerry',0,'1991-8-20',7000,10);
INSERT INTO emp VALUES(NULL,'David',1,'1995-10-20',3000,30);
INSERT INTO emp VALUES(NULL,'Maria',0,'1992-3-20',5000,10);
INSERT INTO emp VALUES(NULL,'Leo',1,'1993-12-3',8000,20);
INSERT INTO emp VALUES(NULL,'Black',1,'1991-1-3',4000,10);
INSERT INTO emp VALUES(NULL,'Peter',1,'1990-12-3',10000,10);
INSERT INTO emp VALUES(NULL,'Franc',1,'1994-12-3',6000,30);
INSERT INTO emp VALUES(NULL,'Tacy',1,'1991-12-3',9000,10);
INSERT INTO emp VALUES(NULL,'Lucy',0,'1995-12-3',10000,20);
INSERT INTO emp VALUES(NULL,'Jone',1,'1993-12-3',8000,30);
INSERT INTO emp VALUES(NULL,'Lily',0,'1992-12-3',12000,10);
INSERT INTO emp VALUES(NULL,'Lisa',0,'1989-12-3',8000,10);
INSERT INTO emp VALUES(NULL,'King',1,'1988-12-3',10000,10);
INSERT INTO emp VALUES(NULL,'Brown',1,'1993-12-3',22000,NULL);
#查询数据
select *from dept;
select *from emp;
-- show create table dept;
-- show create table emp;