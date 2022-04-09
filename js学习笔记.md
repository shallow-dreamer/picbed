# 学习一门编程语言步骤

1. 了解背景知识：历史、现状、特点、应用场景
2. 搭建开发环境，打印输出hello world
3. 变量和常量
4. 数据类型
5. 运算符
6. 逻辑结构
7. 通用小程序
8. 函数和对象
9. 第三方库和框架
10. 个人项目

# JS部分单词

链接：https://blog.csdn.net/codece1/article/details/123860153?spm=1001.2014.3001.5502

# 一、JS概述

JS既可以运行在浏览器端，也可以运行在服务器端

浏览器端可以实现用户的交互效果，还可以进行后端开发，例如：调用数据库、调用其他服务器...

特点：

1. 无需编译，有JS引擎解释执行——解释型语言
2. 弱类型语言
3. 基于对象
4. 跨平台性

# 二、搭建开发环境

## 1.客户端

每个浏览器中都有自带的JS解释器

国际公认5大浏览器（有自己的内核）

1. 谷歌
2. 火狐
3. edge
4. Safari
5. 欧朋

国内浏览器内都是用国外浏览器的内核

## 2.服务器端

安装Node.js，下载地址：http://nodejs.org

查看是否安装：在命令行中输入node -v

## 3.运行node.JS

浏览器端

​	创建01.js和01.html，把js文件嵌入到html文件中

```html
<script src="01,js"></script>
```

node.js

​	在命令行cmd下，node 拖拽要运行的文件

# 三、JS的语法规范

1. 区分别大小写
2. 每行代码结束的分号是可以省略的
3. 分为单行注释（//...)和多行注释（/** ...* */）

# 四、变量

用于存储数据的容器

## 1.声明变量

使用关键字var来声明变量，然后把值保存到变量中

一次声明一个变量：var x=1

一次声明多个变量，变量之间用逗号隔开：var a=1,b=2

## 2.命名规则

1. 变量名称可以由字母、下划线、数字、美元符号组成
2. 数字不能用在开头
3. 不能使用关键字
4. 变量名称可读性：让名字有语义化，驼峰命名法

## 3.变量赋值

声明变量后未赋值，变量的默认值为undefined（未定义）

可以多次赋值，并且赋不同类型的值，这是弱类性语言的特点

## 课后任务

```js
//声明多组变量，分别保存商品的单价和数量，计算出总价并打印输出
var a=2,b=3
console.log(a*b)
//声明两个变量，分别保存两个值，交换两个变量保存的值
var a=1,b=2
a=a+b
b=a-b
a=a-b
console.log(a,b)
var a=1,b=2
c=a	//c=1
a=b	//a=2
b=c	//b=1
console.log(a,b)
```

# 五、常量——const

1. 常量声明必须赋值
2. 常量赋值后不可重新赋值
3. 用于存储不能变化的数据

```js
//声明变量来保存圆的半径，声明常量保存圆周率，计算出圆的周长和面积，最后打印输出
const pi=3.14
var r=2
a=pi*r**2
c=pi*r*2
console.log(a,c)
```

# 六、数据类型

分为原始类型和引用类型

原始类型分为数值型、字符串型、布尔型、未定义型、空

| 检测数据类型：typeof<br />查看任意字符的编码：.charCodeAt() |
| ----------------------------------------------------------- |

## 1.数值型（number）

1. 整数型（parseInt）

   ```js
   //数值型
   var n1=10
   console.log(typeof n1)
   ```

2. 浮点型（parseFloat）

   ```js
   //浮点型
   var n5=314.15
   var n6=3141.5e-1
   var n7=3.1415e2
   console.log(n5,n6,n7)
   ```

3. NaN：Not a Number，不是一个数字，只要出现这个值就是在将一个值转换成数值的时候，没有成功的得到数字返回的结果。NaN 和任何数值执行运算的结果都是NaN

## 2.字符串型（string）

所有被引号所包围的值都是字符串型

## 3.布尔型（Boolean）

1. true：真
2. false：假

用于保存只有两个状态的值

## 4.未定义值（undefined）

只有一个值undefined，表示一个空值

## 5.空（null）

只有一个值null，类型是object，常和对象一起使用

# 七、数据类型转换

## 1.隐式转换

自动发生的转换

| 所有的隐式转换都会自动调用Number() |
| ---------------------------------- |

```js
//数值+字符串:数值会转换成字符串拼接
var n1=2+'3'	//23 string
console.log(n1,typeof n1)
//数值+布尔型：布尔值会转换成0或1相加
var n2=1+true	//2 number
var n3=1+false	//1 number
console.log(n2,typeof n3,n3,typeof n2)
//字符串+布尔型：布尔值会转换成字符串拼接
var n4='3'+true		//3true string
var b5='3'+false	//3false string
console.log(n4,typeof n4,n5,typeof n5)
```

## 2.强制转换

1. 强制转换成数值型（Number()）

   ```js
   /强制转换为数值
   var n1=Number('1')	//1
   var n2=Number('1a')		//NaN
   console.log(n1,n2)
   var n3=Number(true)		//1
   var n4=Number(false)	//0
   console.log(n3,n4)
   var n5=Number(undefined)	//NaN
   var n6=Number(null)		//0
   console.log(n5,n6)
   ```

2. 强制转换为整型（parseInt()）

   用于将小数或者字符串转换成整型，其他结果都是NaN

   ```js
   var n1=parseInt(1.2)	//1
   var n2=parseInt('123qqq')	//123
   var n3=parseInt('a2')	//NaN
   console.log(n1,n2,n3)
   ```

3. 强制转为浮点型（parseFloat()）

   用于将字符串转为浮点型，其他结果都是NaN

   ```js
   var n1=parseFloat('2a3')	//2
   var n2=parseFloat('3.14c')	//3.14
   var n3=parseFloat('c5')		//NaN
   console.log(n1,n2,n3)
   ```

4. 强制转换为字符串（toString()）

   只能用于将数值和布尔值转换为字符串

   ```js
   var n=true
   var str=n.toString()	//true string
   console.log(str,typeof str)
   ```

# 八、运算符

表达式：有数据本身或者运算符连接的操作数据组成的形式，最终都是会产生数据

运算符分为算术运算符、比较运算符、逻辑运算符、位运算符、赋值运算符、三目运算符

运算符优先级：从上到下

## ![运算符优先级](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204091619431.png)1.算术运算符 + - * / % ++ --

%	取余

++	自增，在原来的基础上加1

--	自减，在原来的基础上减1

```js
var a1=5
//先把a1的值赋给a2，然后a1再执行自增
var a2=a1++

var a3=2
//a3先执行自增，再把自增的结果赋给a4
var a4=++a3
```

## 2.比较运算符 > < >= <= == != === `!==`

==	等于：比较两个值是否相同

===	全等于：比较两个值的类型和值是否相同

!=	不等于

!==	不全等于

1. 数字和字符串比较，字符串会转为数值
2. 字符串之间比较，比较的是首个字符的编码

NaN 和任何值比较（> < >= <= == ===）结果都是false

```js
3>' 10a'	//false
3<' 10a'	//false
3==' 10a'	//false
```

## 3.逻辑运算符

&&	逻辑与：关联的两个条件都是true，结果是true

||	逻辑或：关联的连个条件都是false，结果是false

!	逻辑非：取反

```js
var user='1'
var pwd='1'
console.log(user=='tao222' && pwd=='123abc')
//变量保存年龄，判断是否符合老人或儿童
var age=25
console.log(age>=60 || age <=12)
var user='1'
console.log(user==='tao222' || user==='13812345678' || user==='tao@tedu.cn')
```

## 课后任务

```js
//练习： 声明变量保存任意一个年份，判断是否为闰年，如果是打印true，否则打印false闰年：能被4整除、并且不能被100整除、或者能被400整除
var year=1996
console.log(year%4==0 && year%100!=0 || year%400==0)
//重点在数据库，尝试分析项目功能，设计数据库；前提：参考学子商城
代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/codeboy.sql
https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/codeboy%20copy.sql
```

