drop database if exists xz;
create database xz;
use xz;
create table user(
    uid int primary key,
    uname varchar(20) not null,
    upwd varchar(20) not null,
    email varchar(20),
    phone int(13),
    user_name varchar(20),
    reg_time varchar(10)
);
insert into user values
    ('1','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123'),
    ('2','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123'),
    ('3','qw','gyigyi3g12','sdq@asda.com','2312312323','weqe','1212-32113-123');