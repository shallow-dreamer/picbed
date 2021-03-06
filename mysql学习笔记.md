# 一、电脑常用的快捷键

​	alt + tab：切换当前窗口

​	Windows + d：显示或隐藏桌面

​	Windows + e：快速打开文件资源管理器

​	Windows + r：打开运行窗口，输入命令行执行命令

单词：https://blog.csdn.net/codece1/article/details/123860047

软件（包括安装视频）：https://pan.baidu.com/s/1xL02vqb_XnLZoZzyjTRNKQ 
提取码：a94v

笔记和代码下载地址：http://code.tarena.com.cn
用户名：tarenacode
密码：code_2013

# 二、项目导入

前端开发的是什么产品，前端开发的是不是软件？

​	网站/小程序/APP... 所有涉及到的用户界面其实都是前端

​	前端是软件

​		软件架构（运行）

​		BS架构：浏览器/服务器，直接使用浏览器运行

​		CS架构：客户端/服务端，需先安装客户端

## 1. 软件的开发流程（软件的生命周期）

### 1.1 软件定义期

1. 可行性研究阶段

   技术 /人力/设备/资金/时间/回报率/政策/风俗...

2. 需求分析阶段

   包括功能性需求分析和非功能性需求分析

   非功能性需求是保证功能性需求运转的前提

### 1.2 软件开发期

1. 概要设计阶段——架构师

   子系统、模块、技术选型...

2. 详细设计阶段——产品经理

   产品的原型

3. 编码实现阶段

   UI设计——效果图

   前端——将效果图转为html，css，js文件

   后端——为前端提供项目所需要的数据

4. 测试阶段——软件测试工程师

   软件测试

### 1.3 软件的维护期

1. 部署阶段——运维工程师

   将软件部署到服务器

2. 软件维护阶段

## 2. 学子商城项目的功能性需求分析

前台子系统：www.codeboy.com:9999

后台管理系统：http://www.codeboy.com:9999/admin/index.html

| 前台子系统                                                   | 后台子系统                                                   | 移动端子系统                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 商品模块：首页、列表、详情...<br />用户模块：注册、登录、个人中心、收藏夹...<br />购物车模块：添加、修改、删除... | 商品模块：添加、修改、删除、搜索...<br />用户模块：列表、修改、删除、详情、搜索...<br />订单模块：列表、修改、删除、详情、搜索... | 商品模块：首页、列表、详情...<br />用户模块：注册、登录、个人中心、收藏夹...<br />购物车模块：添加、修改、删除... |

## 3.数据

### 3.1 数据存储的方式

文件、内存、云服务器、数据库服务器

### 3.1 数据库（database）

数据库按照一定的形式来组织存储数据，目的为了便于数据的操作——增删改查

#### 3.1.1 数据库的发展历史

网状数据库 -> 层次型数据库 -> **关系型数据库** -> 非关系型数据库（nosql）

#### 3.1.2 关系型数据库的逻辑结构

数据库服务器（server） -> 数据库（database） -> 数据表（table） -> 行（row） -> 列（column）

![image-20220401181216476](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204011812822.png)

# 三、服务器

硬件：就是一台计算机，访问一个网站就是在访问一台远程计算机

软件：计算机提供多种服务，例如：web服务、游戏服务、数据库服务...

访问服务器

​	找服务器：通过域名/IP地址

​	找对应的服务：通过端口

​	使用服务：协议

# 四、mysql

Oracle：MySQL

马丁：MariaDB

xampp：是一款服务器套装，包含多款服务器端软件

## 1.mysql部署结构

1. 服务器端：负责存储维护数据——银行的数据库服务器

   mysqld.exe 启动文件，占用的端口是3306

2. 客户端：负责连接数据库服务器，对数据进行操作——ATM机

   mysql.exe 客户端文件

## 2.使用客户端连接服务器端

mysql.exe -hlocalhost或者 127.0.0.1 -P3306 -uroot -p

-h：host 连接的服务器域名/IP地址 连接本地电脑 localhost或者127.0.0.1

-P：port 端口

-u：user 用户名，mysql管理员用户名为root

-p：password 密码，xampp下root用户对应的密码为空

mysql -uroot 简写形式

quit：退出连接（Ctrl+c、exit）

## 3.常用的管理命令

quit	退出连接

show databases;	查看所有的数据库

use 数据库名称;	进入到指定的数据库

show tables;	查看当前进入的数据库下的所有表

desc 数据表名称;	描述指定的数据表中表头下的所有项

# 五、SQL命令

SQL：结构化查询语言，专门用于操作关系型数据库服务器，主要是对数据进行增删改查

## 1.SQL命令的运行方式<img src="https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204011637926.jpeg"/>

1.  交互模式

   在客户端输入一行命令，按回车，服务端就会执行一次。——适用于临时的查看数据

2. 脚本模式

   客户端把要执行的命令写在一个脚本文件中，然后一次性提交给服务器执行。——适用于批量的操作数据

   需要退出服务器连接

   mysql -uroot<需要运行的脚本文件路径

## 2.SQL命令的语法规范

1. 一行命令可以跨越多行，以英文的分号作为结束
2. 不区分大小写，习惯上关键字大写，非关键字小写
3. 假设某一行代码出现语法错误，则往后的所有命令不再执行
4. 分为单行注释（#...）和多行注释（/* ... */），注释的内容不会被服务器执行

## 3.标准SQL命令

1. 定义数据结构（DDL）：create（创建）、drop（丢弃）、alter（修改）
2. 操作数据（DML）：insert（插入）、delete（删除）、update（更新）
3. 查询数据（DQL）：select（选择、查询）
4. 控制用户权限（DCL）：grant（授权）、revoke（收权）

# 六、常用的SQL命令

## 1.丢弃数据库，如果存在

​		drop database if exists 数据库名称;

## 2.创建一个新的数据库

​		create database 数据库名称;

## 3.进入创建的数据库

​		use 数据库名称;

## 4.创建数据表

​		create table 数据表名称(

​				列名称 列类型,

​				...

​		);

## 5.插入数据

​		insert into 数据表名称 values(列值，列值，...),...;

## 6.查询数据

​		select * from 数据表名称;

## 7.修改数据

​		update 数据表名称 set 列名 = 值,列名 = 值,... where 条件;

## 8.删除数据

​		delete from 数据表名称 where 条件;

## 练习：

```
编写脚本文件xz.sql，先丢弃再创建数据库xz，进入数据库xz，创建保存用户数据的表user，包含的列有编号uid，用户名uname，密码upwd，邮箱email，手机phone，真实姓名user_name，注册时间reg_time；插入若干条数据，查询结果。
```

文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/xz.sql

# 七、计算机如何存储字符

## 1.存储英文字符

ASCII：对英文字符进行了编码，总共有128个

Latin-1：对欧洲字符进行了编码，总共有256个，兼容ASCII，mysql默认使用这种编码

## 2.存储中文字符

GB2312：对6000多常用的汉字进行了编码，兼容ASCII

GBK：对2万多汉字进行了编码，兼容GB2312

Unicode：对世界上主流国家常用的语言进行了编码，具体有三种存储方案，分别是utf-8，utf-16，utf-32

## 3.解决mysql中文乱码

1. 脚本文件的编码是utf-8
2. 设置客户端连接服务器端的编码是utf-8
3. 服务器端存储字符使用的编码是utf-8

![image-20220402225547267](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/image-20220402225547267.png)

## 练习：

```
编写脚本文件01_sina.sql，先丢弃再创建数据库sina，设置编码为utf8，进入数据库，创建保存新闻数据的表news，包含的列有编号nid，标题title，来源origin，发表时间ctime，详情detail；插入若干条数据，修改1条，删除1条。最后在交互模式下查询数据。
```

代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/01_sina.sql

| 特殊情况：如果以上操作在**交互模式**下还是乱码，还需要以下操作，修改命令行的编码为utf-8<br />返回dos，执行 chcp 65001 |
| ------------------------------------------------------------ |

# 八、列类型

在创建数据表的时候，指定的列存储的数据类型

```SQL
create table news(
	nid 列类型
);
```

## 1.数值型——引号可以忽略

1. tinyint	微整型，占1个字节，范围 -128~127
2. smallint	小整型，占2个字节，范围 -32768~32767
3. int	整型，占4个字节，范围 -2147483648~2147483647
4. medium	中整型，占3个字节
5. bigint	大整型，占8个字节，范围很大
6. float	单精度浮点型，占4个字节，存储的数值越大，精度越低
7. double	双精度浮点型，占8个字节，存储的数值越大，精度越低
8. decimal(M,D)	定点小数，小数点不会发生变化，M代表总的有效位数，D代表小数点后的有效位数
9. Boolean	布尔型，只有两个值，分别是true和false，代表真和假，用于存储只有两个值的数据

| true和false是关键字，在使用时不能加引号<br />使用布尔型会自动转为 tinyint，true -> 1,false -> 0，也可以直接插入1或0 |
| ------------------------------------------------------------ |

## 2.日期时间型——必须加引号

1. date	日期型	'2022-10-22'
2. time	时间型	'15:50:30'
3. datetime	日期时间型	'2022-10-22 15:50:30'

## 3.字符串型——必须加引号

1. varchar(M)	变长字符串，不会产生空间浪费，数据操作速度相对慢，常用于存储变化长度的数据，M的最大值是65533
2. char(M)	定长字符串，可能产生空间浪费，数据操作速度相对快，常用于存储固定长度的数据，M的最大值是255
3. text(M)	大型变长字符串，M的最大值是2G

| varchar(5) | char(5)   |
| ---------- | --------- |
| a\0        | a\0\0\0\0 |

| 1TB = 1024GB<br />1GB = 1024MB<br />1MB = 1024KB<br />1KB = 1024Byte<br />1B = 8bit |
| ------------------------------------------------------------ |

```sql
#选择合理的列类型
create table t1(
	id int,
	title varchar(64),
    age tinyint,
    birthday date,
    sex boolean,
    phone char(11),
    salary decimal(8,2)
);
```

## 练习：

​		

```
编写脚本文件02_xuezi.sql，先丢弃再创建数据库xuezi，设置编码为utf8，进入到数据库，创建保存商品数据的表laptop，包含的列有编号lid，标题title，价格price，库存量count，上架时间stime，是否为首页推荐isindex；插入若干条数据，查询结果。
```

代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/01_xuezi.sql



# 九、列约束

mysql可以对要插入的值进行验证，只有符合要求才允许插入

```sql
create table t1(
	lid int primary key
);
```

## 1.主键约束——primary key

声明了主键约束的列，不允许插入重复的值，一个表中只能有一个主键约束，通常加在编号列上

| NULL：空，表示一个暂时无法确定的值，是关键字，使用不加引号，null 不等于null，多行插入时null为0 |
| ------------------------------------------------------------ |

## 2.非空约束——not null

声明了非空约束列禁止插入null

## 3.唯一约束——unique

声明了唯一约束列不允许插入重复的值，允许插入null

## 4.默认值约束——default

在插入数据时，如果不提供值可以使用列的默认值

步骤：

1. 设置默认值：通过default设置，如果不设置，默认值为null
2. 使用默认值：不提供值的时候会自动使用默认值，或插入default关键字

```sql
insert into 数据表名称（列名称...） values（值...);
insert into 数据表名称 values（值,default,...);
#哪些列想使用默认值，直接使用关键字default，就会应用这个列的默认值
```

## 5.检查约束——check

用户根据自己的需求添加的约束

mysql不支持这种约束，认为这种约束会严重影响数据的插入速度

```sql
create table student(
	score tinyint check(score >= 0 and score <= 100)
);
```

## 6.外键约束——foreign key

目的是为了确保两个表之间确立关联，便于后期查询

声明了外键约束的列，插入的值必须在另一个表中的主键列的值中

```sql
constraint 外键名称 foreign key(外键列) 另一个表（主键列）
```

注意事项：外键约束的列上允许插入null，外键列和对应的另一个表的主键列两者的列类型要保持一致

## 课后任务：

```
练习：编写脚本文件xz.sql，先丢弃再创建数据库xz，设置编码为utf8，进入数据库，创建保存笔记本分类的表family，包含的列有编号fid(主键约束)，分类名称fname，插入以下数据

 10 小米    20 戴尔   30 联想

 创建保存笔记本数据的表laptop，包含的列有编号lid(主键约束)，标题title，价格price，上架时间stime，是否在售isonsale，所属类别编号familyid；插入若干条数据
```

代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/xz1.sql

# 十、自增列

auto increment：自动增长,声明了自增列，在插入值的时候，只需要赋值为null，就会获取当前的最大值然后加1插入

注意事项：自增列必须添加在整数形式的主键列上，允许手动赋值

代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/tedu.sql

# 十一、简单查询

## 1.查询特定的列

```sql
#查询出所有的员工的姓名和性别
select ename,sex from emp;
#查询出所有员工的姓名，生日，工资
select ename,birthday,salary from emp;
```

## 2.查询所有的列

```sql
select * from emp;
select eid,ename,sex,birthday,salary,deptid from emp;
```

## 3.给列起别名

```sql
#查询所有员工的编号和姓名，使用别名
select eid as "编号",ename as "姓名" from emp;
select eid as 编号,ename as 姓名 from emp;
select eid 编号,ename 姓名 from emp;
#查询所有员工的姓名，性别，工资，使用一个字母作为别名
select ename e,sex x,salary y from emp;
#说明：使用as关键字设置别名，as关键字可以省略，保留空格即可
```

## 4.显示不同的记录

```sql
#查询都有哪些性别的员工
select distinct sex from emp;
#查询员工都分布在哪些部门
select distinct deptid from emp;
```

## 5.查询时执行计算

```sql
#查询所有员工的姓名及其年薪
select ename,salary*12 from emp;
#假设每个员工的工资增长2000，年终奖30000，查询所有员工的姓名及其年薪
select ename xm,(salary+2000)*12+30000 nx from emp;
```

## 6.查询结果排序

```sql
#查询所有的部门编号，升序排列 asc(ascendant)升序的
select * from dept order by did asc;
#查询所有的部门编号，降序排列 desc（descendant）降序的
select * from dept order by did desc;
#查询所有的员工，按工资降序排列
select * from emp order by salary desc;
#查询所有的员工，按生日升序排列
select * from emp order by birthday asc;
#查询所有的员工，按姓名排列
select * from emp order by ename;
#查询所有员工，按工资和姓名排序
select * from emp order by salary,ename;
#查询所有的员工，要求女员工在前，性别相同按生日升序排列
select * from emp order by sex,birthday;
#asc可以省略
#如果用字符串排序，按字符串首字母的unicode编码进行排序
```

## 7.条件查询

```sql
#查询编号为5的员工
select * from emp where eid = 5;
#查询姓名为King的员工
select * from emp where ename = "King";
#查询所有的女员工
select * from emp where sex = 0;
#查询工资在5000以上的员工
select * from emp where salary > 5000;
#查询不在10号部门的员工
select * from emp where deptid != 10 || deptid is null;
#查询有明确部门的员工
select * from emp where deptid is not null;
#查询工资在6000到8000的员工
select * from emp where salary between 6000 and 8000;
#查询6000以下8000以上的员工
select * from emp where salary not between 6000 and 8000;
#查询20号部门或30号部门的员工
select * from emp where deptid in (20,30);
#查询不在20号部门或30号部门的员工
select * from emp where deptid not in (20,30);
```

## 8.模糊查询

```sql
#查询姓名中含有字母e的员工
select * from emp where ename like '%e%';
#查询姓名中以字母e结尾的员工
select * from emp where ename like '%e';
#查询姓名中倒数第二个为字母e的员工
select * from emp where ename like '%e_';
```

%	匹配任意个字符

_	匹配任意1个字符

注意事项：以上两个匹配的符号必须结合like使用

## 9.分页查询

查询的结果中有太多的数据，一次显示不了可以做成分页显示

需要两个已知条件：

1. 每页的数据量
2. 当前的页码

```sql
select *from emp limit 0,5;
select *from emp where sex = 0 order by salary desc limit 0,3;
```

注意：

1. 开始的值必须提前计算好，不能在命令中写计算
2. 开始的值和每页的数据量必须是数值型，不能加引号

# 十二、复杂查询

## 1.聚合查询/分组查询

聚合函数

1. count（）	计算数量总数

   ```sql
   #查询所有员工的数量
   select count(*) from emp;
   #使用编号查询所有员工
   select count(eid) from emp;
   #使用部门编号查询所有员工
   select count(deptid) from emp;
   ```

2. sum（）	计算总和

   ```sql
   #查询所有男员工工资和
   select sum(salary) from emp where sex = 1;
   ```

3. AVG（）	计算平均数

   ```sql
   #计算20号部门平均工资
   select avg(salary) from emp where deptid = 20;
   ```

4. max（）	计算最大数

   ```sql
   #查询女员工最高工资
   select max(salary) from emp where sex = 0;
   ```

5. min（）	计算最小值

   ```sql
   #查询年龄最大的员工的生日
   select min(birthday) from emp;
   ```

分组查询:通常只用于查询聚合函数和分组条件

```sql
#查询男女员工们的数量，工资总数
select count(eid),sum(salary),sex from emp group by sex;
#查询各部门的平均工资、最高工资和最低工资
select deptid,avg(salary),max(salary),min(salary) from emp group by deptid;
```

```sql
#查询1990年出生的员工
select ename,birthday from emp where birthday like '1990%';
select ename,birthday from emp where year(birthday) = 1990;#year()获取年份
select ename,birthday from emp where month(birthday) = 12;#month()获取月份
select ename,birthday from emp where day(birthday) = 3;#day()获取日期
```

## 2.子查询

```sql
#查询工资最高的员工
select * from emp where salary = (select max(salary) from emp);
#查询工资比tom高的员工
select * from emp where salary > (select salary from emp where ename = 'tom');
#查询和tom一年出生的员工
select * from emp where year(birthday) = (select year(birthday) from emp where ename = 'tom') && ename != 'tom';
```

## 3.多表查询

查询的数据分布在多个表中

```sql
#查询所有的员工姓名和部门名称
select e.ename,d.dname from emp e,dept d where e.deptid = d.did;
```

新的多表查询语法

```sql
#内连接
#语法：表1 inner join 表2 on 条件
select e.ename,d.dname dname from emp e inner join dept d on e.deptid = d.did;
#左外连接
#语法：表1 left join 表2 on 条件
select e.ename,d.dname dname from emp e left outer join dept d on e.deptid = d.did;
#右外连接
#语法：表1 right join 表2 on 条件
select e.ename,d.dname dname from emp e right outer join dept d on e.deptid = d.did;
#全连接（mysql不支持） 实现方法：将左外连接和右外连接进行联合，合并相同的记录
#语法：表1 outer join 表2 on 条件
select e.ename,d.dname dname from emp e full join dept d on e.deptid = d.did;
#union 联合以后合并相同的记录
(select e.ename,d.dname dname from emp e right outer join dept d on e.deptid = d.did) union (select e.ename,d.dname dname from emp e left outer join dept d on e.deptid = d.did);
#union all 联合以后不合并相同的记录
(select e.ename,d.dname dname from emp e right outer join dept d on e.deptid = d.did) union all (select e.ename,d.dname dname from emp e left outer join dept d on e.deptid = d.did);
```

mysql数字函数（部分）：

1. ABS(x)：返回x的绝对值
2. AVG(expression)：返回一个表达式的平均值，expression是一个字段（或者说列）
3. COUNT(expression)：返回查询的记录总数，expression参数是一个字段或*号
4. MAX(expression)：返回字段expression中的最大值
5. MIN(expression)：返回字段expression中的最小值
6. RAND()：返回0到1的随机数
7. ROUND(x)：返回离x最近的整数（四舍五入）
8. SUM(expression)：返回字段的总和

