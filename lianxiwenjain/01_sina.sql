#设置连接编码
set names utf8;
#丢弃数据库sina
drop database if exists sina;
#创建数据库sina，设置编码为utf8
create database sina default charset = utf8;
#进入数据库
use sina;
#创建保存新闻的数据表news
create table news(
    nid int,
    title varchar(20),
    origin varchar(80),
    ctime datetime,
    detail varchar(21740)
)default charset = utf8;
#插入数据
insert into news values
    ('1','达到','qwdqwd','20000001','都是垃圾的骄傲基督教ajsdkjakldjaskjd'),
    ('2','达到','鞍山地区啊','231121','都是垃圾的骄傲基督教ajsdkjakldjaskjd'),
    ('3','达到','鞍山地区啊','200000','都是垃圾的骄傲基督教ajsdkjakldjaskjd'),
    ('4','达到','鞍山地区啊','200000','都是垃圾的骄傲基督教ajsdkjakldjaskjd'),
    ('5','达到','鞍山地区啊','200000','都是垃圾的骄傲基督教ajsdkjakldjaskjd');
#修改数据
update news set title = '大单位',origin = '是打开的奇偶奇迹哦ijqijqwij', detail = '是的' where nid = '3';
#删除数据
delete from news where nid = '4';
#查询数据
select * from news;
#显示数据库设置
show create database sina \G;
#显示数据表设置
show create table news \G;
/*计算例子
举两个例说明一下实际长度的计算。

a)  若一个表只有一个varchar类型，如定义为

create table t4(c varchar(N)) charset=gbk;

则此处N的最大值为(65535-1-2)/2= 32766。
减1的原因是实际行存储从第二个字节开始;
减2的原因是varchar头部的2个字节表示长度;
除2的原因是字符编码是gbk。
 

b) 若一个表定义为

create table t4(c int, c2 char(30), c3 varchar(N)) charset=utf8;

则此处N的最大值为 (65535-1-2-4-30*3)/3=21812
减1和减2与上例相同;
减4的原因是int类型的c占4个字节;
减30*3的原因是char(30)占用90个字节，编码是utf8。*/