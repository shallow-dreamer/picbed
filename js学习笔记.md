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

## 1.原始类型

存储在栈内存中

### 1.数值型（number）

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

### 2.字符串型（string）

所有被引号所包围的值都是字符串型

### 3.布尔型（Boolean）

1. true：真
2. false：假

用于保存只有两个状态的值

### 4.未定义值（undefined）

只有一个值undefined，表示一个空值

### 5.空（null）

只有一个值null，类型是object，常和对象一起使用

## 2.引用类型

存储在堆内存中，会自动生成一个地址，如果用变量保存对象，保存的是生成的地址

销毁引用类型数据，一旦数据不被任何地址引用，就会自动销毁

null	空地址，不指向任何的引用类型数据

```js
var a = 2
function fn(n){
    n = 3
}
//拷贝一份a的值，作为实参传递——值传递
fn(a)
console.log(a)		//2
//obj1保存的是地址
var obj1 = {
    b:3
}
function foo(obj2){
    obj2.b=4
}
//拷贝一份obj1的地址，作为实参传递——址传递
foo(obj1)
console.log(obj1.b)		//4
```

![1](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204240937552.png)

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
   var n1=parseInt(1.2)	//1var n2=parseInt('123qqq')	//123var n3=parseInt('a2')	//NaNconsole.log(n1,n2,n3)
   ```

3. 强制转为浮点型（parseFloat()）

   用于将字符串转为浮点型，其他结果都是NaN

   ```js
   var n1=parseFloat('2a3')	//2var n2=parseFloat('3.14c')	//3.14var n3=parseFloat('c5')		//NaNconsole.log(n1,n2,n3)
   ```

4. 强制转换为字符串（toString()）

   只能用于将数值和布尔值转换为字符串

   ```js
   var n=truevar str=n.toString()	//true stringconsole.log(str,typeof str)
   ```

# 八、运算符

表达式：有数据本身或者运算符连接的操作数据组成的形式，最终都是会产生数据

运算符分为算术运算符、比较运算符、逻辑运算符、位运算符、赋值运算符、三目运算符

运算符优先级：从上到下

## ![运算符优先级](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204091619431.png)

## 1.算术运算符 + - * / % ++ --

%	取余

++	自增，在原来的基础上加1

--	自减，在原来的基础上减1

```js
var a1=5//先把a1的值赋给a2，然后a1再执行自增var a2=a1++var a3=2//a3先执行自增，再把自增的结果赋给a4var a4=++a3
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
3>' 10a'	//false3<' 10a'	//false3==' 10a'	//false
```

## 3.逻辑运算符

&&	逻辑与：关联的两个条件都是true，结果是true

||	逻辑或：关联的连个条件都是false，结果是false

!	逻辑非：取反

```js
var user='1'var pwd='1'console.log(user=='tao222' && pwd=='123abc')//变量保存年龄，判断是否符合老人或儿童var age=25console.log(age>=60 || age <=12)var user='1'console.log(user==='tao222' || user==='13812345678' || user==='tao@tedu.cn')
```

## 课后任务

```js
//练习： 声明变量保存任意一个年份，判断是否为闰年，如果是打印true，否则打印false闰年：能被4整除、并且不能被100整除、或者能被400整除var year=1996console.log(year%4==0 && year%100!=0 || year%400==0)//重点在数据库，尝试分析项目功能，设计数据库；前提：参考学子商城代码文件：https://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/codeboy.sqlhttps://gitee.com/shallow_dreamer/pictures1/blob/master/lianxiwenjain/codeboy%20copy.sql
```

## 4.位运算符

模拟计算机底层的运算，先把值转换成2进制再进行运算，运算完再把结果转换成10进制

&	按位与，上下两位比较，都是1结果是1，否则是0

|	按位或，上下两位比较，都是0结果是0，否则是1

^	按位异或，上下两位比较，同为0，异为1

`>>`	按位右移

`<<`	按位左移

## 5.赋值运算符	+= -= *= /= %=

运算赋值：先执行运算，再进行赋值

```js
//声明变量保存商品的价格，8折，输出价格var a=100a *= 0.8console.log(a)
```

## 6.三目运算符

一目运算符：由一个运算符连接了一个表达式	++ -- ！

二目运算符：由一个运算符连接了两个表达式

三目运算符：由两个运算符连接了三个表达式	条件表达式 ? 返回表达式1 : 返回表达式2	如果条件表达式为true执行表达式1，否则执行表达式2

```js
//声明两个变量分别保存用户输入的用户名和密码，如果用户名是admin，并且密码是123abc，打印"登陆成功",否则”登陆失败”var user = 'admin'var pwd = '123abc'console.log(user == "admin" && pwd == "123abc" ? "登录成功" : "登录失败")
```

# 九、浏览器端函数

alert()	弹出警示框

prompt()	弹出输入框，需要变量来保存输入值，保存的值为字符串型

```js
//弹出两次输入框，分别输入数字，使用警示框弹出结果var a = prompt("请输入：")	//1 stringvar b = prompt("请输入：")	//1 stringalert(a + b)	//11 string//将输入字符转换为数值后相加var a = Number(prompt("请输入："))	//1 Numbervar b = Number(prompt("请输入："))	//1 Numberalert(a + b)	//2 Number
```

# 十、流程控制

程序 = 数据 + 算法

程序执行方式：顺序执行、选择执行、循环执行

## 1. if语句	if(条件1){...}else if(条件2){...}else{...}

如果语句块中只有一行代码，则大括号可以省略

以下情况作为条件会隐式转换为false：0，NaN，""，undefined，null

```js
//声明变量保存签名，如果内容为空则输出"这家伙很懒"，否则输出签名var a = "”if(!a){    a = "懒"}console.log(a)//判断一个人是否是成年人var age = 18if(age >= 18){    console.log("成年人")}else{    console.log("未成年人")}//改为三目运算符console.log(age >= 18 ? "成年人" : "未成年人")//声明两个变量分别保存用户输入的用户名和密码，如果用户名为admin，密码为123abc，打印登录成功，否则打印登录失败user = prompt("请输入:")pwd = prompt("请输入:")console.log(user == "admin" && pwd == "123abc" ? "登录成功" : "登录失败")//假设从后端获取到了一个人的性别（1/0），如果是1打印男，否则打印女var sex = prompt("请输入性别：")console.log(sex == 1 ? "男" : "女")if(sex == 1){    console.log("男")}else{    console.log("女")}
```

## 2. Switch-case语句

是一种特殊的多项判断语句，只能进行全等于（===）的条件判断

```js
switch(表达式){    case 值2：	//如果表达式和值1相同        语句块1        break	//结束整个Switch-case语句    case 值n:        语句块n        break    default:        语句块n+1	//以上所有条件都是false}
```

# 十一、循环

循环条件：控制循环是否要进行下去

循环体：每次循环要执行的代码

break		

## 1. while循环

```js
//先测试再循环while(循环条件){	循环体}//循环打印1~10之间的所有整数var i = 1while(i <= 10){    console.log(i)    i++}
```

## 2. do-while循环

```js
//先循环再测试do{    循环体}while(循环条件)//打印1~10之间的所有整数var i = 1do{    console.log(i)    i++}while(i <= 10)
```

## 3. for循环

```js
for(初始值;循环条件;增量){    循环体}//打印1~10之间的所有整数for(i = 1;i <= 10;i++){    console.log(i)}
```

## 4. continue和break

continue：跳过剩余循环体，还会继续循环

break：跳出循环，不会继续循环

```js
//循环产生1~100之间的所有整数，不包含能被3或4整除的数for(i = 1;i <= 100;i++){    if(i % 3 == 0 || i % 4 == 0){        continue    }    console.log(i)}
```

# 十二、函数

函数：是一个功能体，需要提供若干个数据，返回处理结果。目的是封装重复执行的代码

## 1.自定义函数

1. 创建函数

   ```js
   function 函数名称(){    函数体——封装的重复性的代码}
   ```

2. 调用函数

   函数名称()	每调用一次，就会执行一次函数体中的代码

   ```js
   //创建getSum,在函数体中封装计算1~100之间所有整数的和并打印结果，调用多次function getSum(){    var sum = 0    for(i = 1;i <= 100;i++){        sum += i    }    console.log(sum)}getSum()getSum()getSum()
   ```

3. 创建带有参数的函数

   ```js
   function 函数名称(参数){	//用来接收外部传递的数据    函数体}
   ```

4. 调用

   函数名称(参数列表)——实际传递的数据列表

   创建函数时的参数称为形参，调用函数时的参数称为实参，实参会赋值给形参，实参和形参的数量可以不匹配，如果形参未被赋值则为undefined

   ```js
   //创建函数，计算任意两个数字相加的和function add(a,b){	//	形参：用来接收外部传递的数据    console.log(a + b)}add(3,5)	//实参：实际传递的数据//创建getSum，传递任意一个数字，计算1~任意数之间所有整数的和，调用多次function getSum(n){    for(var i = 1,sum = 0;i <= n;i++){        sum += i	}    console.log(sum)}getSum(50)getSum(60)getSum(80)
   ```

5. return	返回

   return用于返回函数调用后的结果

   如果函数体中没有return或者return后不加任何值，结果是undefined，一旦return执行，奇数函数体的执行

   ```js
   //创建带有返回值的函数function 函数名称(参数列表){    函数体    return 值	//返回函数调用的结果}function add(a,b){    return a + b	//返回函数调用后的结果，结束函数体的执行}//调用//得到函数返回的结果console.log(add(3,5))
   ```

6. 对比 return 和 break

   return用于函数中，作用是结束函数的调用，不再执行函数体

   break用于循环或者Switch-case语句，用于结束对应的语句

   ```js
   //创建函数getStatus，传递订单的状态码，返回对应的汉字状态function getStatus(n){    switch (n){        case 1:            return "等待付款"        case 2:            return "等待发货"        case 3:            return "运输中"        case 4:            return "已签收"        case 5:            return "已取消"        default:            return "无法追踪"    }}console.log(getStatus(0))
   ```

## 2. 变量的作用域

全局作用域：函数以外的区域

函数作用域：函数以内的区域

```js
//全局作用域function(){	//函数作用域}
```

全局变量：在全局作用域下声明的变量

局部变量：在函数作用域下声明的变量

```js
//全局作用域var a	//全局变量，任意位置都能访问function(){    //函数作用域    //函数内不加var声明的变量是全局变量    var b	//局部变量,只能在所在函数下访问    console.log(a)	//访问全局变量}//全局下，访问局部变量会报错//console.log(b)
```

变量声明提升：程序执行前，会将var声明的变量提升到所在作用域的最前面，只有声明提升，赋值不会提升

```js
function boo(n){    //参数n属于局部变量，只能在函数内部访问到    //var n=2}boo(2)
```

## 3.函数的作用域

全局函数：在全局作用下创建的函数，可以在任意的作用域下调用

局部函数：在函数作用下创建的函数，只能在所在的作用域下调用

```js
function fun1(){    //函数作用域	function fun2(){	//	局部函数            }}
```

作用域链：作用域之间嵌套所形成的一种结构，在查找变量的时候，会沿着作用域链不断往上寻找

函数提升：程序执行前，会将整个函数提升到所在作用域的最前面，可以先写调用再写创建

```js
foo()function foo(){	}
```

## 4.递归

在函数内调用函数本身

特点：容易造成死循环，导致内存泄漏

## 5.函数名称

如果函数名称和变量名称相同，函数提升后，变量声明不会提升，函数优先级高于变量

对比函数名称()和函数名称的区别：

函数名称()：调用函数，执行函数体中的代码

函数名称：本质上是一个变量，用来保存一个函数

```js
function fn(){}var fun = function(){    }console,log(fn)		//functionconsole.log(fun)	//function//创建一个函数getSum，传递两个数字，返回两者之间所有整数的和var getSum = function(a,b){    if(a > b){        a = a + b        b = a - b        a = a - b    }	for(var i = a,sum = 0; i <= b;i++){		sum += i    }    return sum}console.log(getSum(10,1))
```

函数表达式和函数声明两种创建函数的区别：

函数声明方式存在函数整体提升，函数表达式只有声明提升

## 6.自调用

全局污染：全局变量带来的影响

```js
;(function(){	//自调用前加；防止自调用函数与前面代码一起执行导致报错    //函数作用域，变量是局部变量})()
```

## 7.回调函数

把函数作为参数传递

```js
function a(){    }function b(n){	n()		//通过形参来调用传递的函数}b(a)	//调用函数ab(function(){})		//调用匿名函数
```

## 8.系统函数

1. isNaN()	检测一个字符串中是否含有非数字，含有返回true，否则返回false
2. eval	执行字符串中的表达式

# 十三、对象

对象是一组属性和方法的集合

js中的对象：

## 1. 自定义对象：用户创建的对象——对象字面量创建

### 1. 字典：{属性名：属性值，属性值：属性值，...}

属性名的引号可以不加，如果含有特殊字符必须添加

```js
//创建一个员工对象，包含的属性有编号、姓名、性别、工资、部门的名称user = {    id:'1',    name:'2',    sex:'3',    salary:'4',    dept:'5'}console.log(user.id)	//访问id值console.log(user['id'])	//访问id值
```

访问属性

```js
对象.属性名对象['属性名']如果对象属性不存在返回undefined//创建一本图书对象，包含的属性有编号，标题，价格，出版社，修改图书价格，添加图书的上架时间book = {    编号:1,    标题:人世间    价格:99,    出版社:不知道}book['价格'] = '88'book['上架时间'] = '2000-00-00'
```

内置构造函数，通过new调用

```js
var laptop = new Object()	//创建一个空对象console.log(laptop)		//返回一个空对象laptop['title'] = '小米'laptop['price'] = '4199'console.log(laptop)
```

遍历属性——循环访问每个属性

```js
book = {}for(var k in book){    console.log(`${k}:${user[k]}`)}
```

#### 课后作业

```js
//创建对象，包含一组学生成绩，遍历对象访问每个成绩，并计算出总成绩和平均成绩student = {    "a":{        yuwen:1,        shuxue:1,        yinhyu:1,        wuli:1,        huaxue:2    },    "b":{        yuwen:2,        shuxue:4,        yinhyu:2,        wuli:3,        huaxue:2    }}for(var k in student){    var sum = 0,count = 0    for(var i in student[k]){        sum += student[k][i]        count++    }    console.log(sum)    console.log(sum/count)}
```

检测属性是否存在

```js
对象[属性名] === undefined 	//false：存在，true：不存在对象.hasOwnProperty('属性名') 	//true：存在，false：不存在属性名 in 对象	//true：存在，false：不存在
```

```js
//创建一个商品对象，包含的属性有编号，标题，价格，如果价格属性存在打八折，否则添加该属性var sp = {    'id':'1',    'title':'2',    'price':'3'}if('price' in sp){    price = sp['price'] * 0.8}else{    sp['price'] = ''}
```

方法

​	方法对应的是一个函数

```js
var p = {    id:'1',    f:function(){        console.log(this.id)	//this指向的是当前调用此方法的对象    },    3:function(){        console.log(3)    }}p.f()//创建一个圆对象，包含的属性有半径，圆周率，添加方法计算出圆的面积和周长var circle = {    r:3,    Pi:3.14,    s:function(){		console.log(this.Pi * this.r ** 2)    },    c:function(){        console.log(this.r * this.Pi * 2)    }}circle.s()circle.c()
```

### 2. 数组：[ 元素，元素，...]

数组：一组数据的集合，每个数据叫做元素

创建数组——数组字面量

数组分类

1. 索引数组——以>=0的整数作为下标
2. 关联数组——以字符串作为下标

索引数组——以>=0的整数作为下标

```js
var a = [1,2,3,4,5]//创建数组，包含音乐var a = [1,2,3,4,5]//创建数组，包含商品var b = new Array()b[0] = 1console.log(a,b)	//[1,2,3,4,5] [1]
```

元素的访问

​	下标：是数组自动为每个元素添加的编号，从0开始的整数

```js
var b = [1,2,3,4,5]//通过下标（索引）访问console.log(b[0])//如果下标不存在，返回undefined//创建数组，包含城市名，修改和添加元素var a = new Array()a[1] = 2a[0] = 1console.log(a)
```

长度属性

```js
数组.length	可以获取数组的长度//在数组末尾添加元素数组[数组.length] = 值//清空数组数组.length = 0
```

内置构造函数

```js
//创建数组var a = new Array(1,2,3)	//[1,2,3]var a = new Array(3)	//[3 empty item] 初始化长度为3，可以添加多个元素//创建数组，包含用户名var a = new Array(1,2,3)//创建数组，初始化长度为3，添加3个国家名称var b = new Array(3)b[0] = 1b[1] = 2b[2] = 3console.log(a,b)
```

关联数组——以字符串作为下标

```js
//关联数组var p = []p['name'] = 1p['sex'] = '男'p.salary = '2'console.log(p)
```

遍历数组

```js
a = [1,2,3,4]for(i = 0;i < a.length;i++){	console.log(a[i])}for(k in a){    console.log(a[k])}
```

### 对比字典与数组

​	两者都是用于保存一组数据，字典将每个数据存储在属性中，数组存储在元素中

​	对象的数据是无序的，数组是有序的

```js
//将音乐保存下来a = [{'名称'：'失眠','歌手':'黄礼楷'},{'名称':'高山和鸟','歌手':'木子束'}]
```

### 数组API

​	API：js预定义的函数和方法



```js
.toString()	数组转为字符串.reverse()	翻转数组.sort()		数组排序，默认以第一个字符编码从小到大排序/*将数组从小到大排序a = [1,2,3,4,5,6,2,14,1,3]a.sort(function(a,b){	return a - b	//a - b > 0，按照数字从小到大，反之则反})*/.join('指定的连接符')		//将数组元素用指定的连接符拼接成字符串/*a = ['a','b','c']//数组转字符串console.log(a.join())	//默认以，连接*/.concat('需要拼接的数组')	//将多个数组进行拼接/*var a = [1]var b = [2]var c = [3]//拼接多个数组console.log(a.concat(b,c))*/.slice(开始位置，结束位置)	//切片，截取从开始位置到结束位置的元素，不包括结束位置的元素，没有结束位置时从开始位置一直截取到末尾/*a = [1,2,3,4,5]console.log(a.slice(1,4))*/.splice(开始位置，长度,元素)	//删除，从开始位置开始删除长度数量的元素，在开始位置前加入元素,长度为0时不删除/*a = [1,2,3,4,5]console.log(a.slice(1,4，3))	//[1,3]*/.push(元素)	//将一个或多个元素添加到数组末尾，返回数组长度.pop()	//将数组末尾元素弹出，返回弹出元素.unshift()	//在输出开头添加元素.shift()	//删除数组开头的元素.indexOf(元素)	//检测数组中是否含有元素，存在返回元素下标，不存在返回-1
```

```js
//练习：//创建数组，包含a~h，每个字母是一个元素，分别截取cd,f，并将截取的两部分拼接a = ['a','b','c','d','e','f','g','h']console.log(a.slice(2,4),a.slice(-3,-2))console.log(a.slice(2,4).concat(a.slice(-3,-2)))//创建数组，包含a~h，每个字母是一个元素，删除e,f,替换d为z，在下标1的位置插入ma = ['a','b','c','d','e','f','g','h']a.splice(-4,2)a.splice(-3,1,'z')a.splice(1,0,'m')console.log(a)//创建数组，判断是否存在元素，不存在将元素添加到末尾a = [1,2]if(a.indexOf(3) == -1){    a.push(3)}console.log(a)
```

#### 课后任务

```js
//遍历数组，将数组中的元素进行翻转var a = [1,2,3,4,5,2,2,3,'q','a','a']for(var i = 0,c = '';i < parseInt(a.length/2);i++){    c = a[i]    a[i] = a[a.length - i - 1]    a[a.length - i - 1] = c    //[a[i],a[a.length - i -1]] = [a[a.length - i -1],a[i]]}//a.reverse()console.log(a)    var i = 0,        x = a.length -1;    while (i < x) {        [a[i], a[x]] = [ a[x], a[i] ]        i++        x--    }//创建数组包含一组数字，将数字进行从小到大的排列//创建数组包含一组数字，将数字进行从小到大的排列a = [2,2,3,1,1,3,5]for(i = 0;i < a.length;i++){	for(j = i;j < a.length;j++){        if(a[i] > a[j]){            [a[i],a[j]] =[a[j],a[i]]        }    }}/*a.sort(function(a,b){	return a - b	//a - b > 0})*/console.log(a)
```

### 3.二维数组——数组嵌套

​	用于对数据进行二次分类

```js
[	[元素],    [],    ...]访问：数组[下标][下标]
```

## 2.内置对象：js提供的对象

### 1.字符串对象——包装对象

目的是为了让原始类型的数据像引用类型数据，具有属性和方法

分为三种：字符串对象、数值对象、布尔对象

```
new String()	//将字符串包装成对象String()		//将任意数据强制转换成字符串型
```

1. 转义字符 \

   ```js
   //改变字符本身的意义\'	改变引号本身的意义\t	连续空格\n	换行
   ```

2. API

   ```
   length	获取字符串的长度charAt()	获取下标对应的字符，也可以使用数组格式 字符串[下标]indexOf()	获取字符对应的下标，返回第一个字符下标，否则返回-1lastIndexOf()	获取字符对应的下标，从后返回第一个字符下标，否则返回-1toUpperCase()	英文字母转大写toLowerCase()	英文字母转小写slice()		截取字符串split()		将字符串转为数组，需要指定分割的字符
   ```

   ```js
   //练习：遍历字符串'javascript',获取a出现的次数var a = 'javascript'for(var i = 0,count = 0;i < a.length;i++){	if(a[i] === 'a'){	//if(a.charAt(i) === 'a'){        count++    }}console.log(count)//统计一个字符串中的字符出现次数并输出次数最多的字符及次数var a = 'aaaqqqwwwddaa'b = {}for(i = 0;i < a.length - 1;i++){    if(a[i] in b){        b[a[i]]++    }else{        b[a[i]] = 1    }}console.log(b)var max = 0,value = ''for(var k in b){    if(max < b[k]){        max = b[k]        value = k    }}console.log(value,max)//声明变量保存一个邮箱，检测邮箱中是否含有@，没有返回非法邮箱var a = 'dadwq@dasd'if(a.indexOf('@') === -1){    console.log('非法邮箱')}//截取一个邮箱的用户名和域名var a = 'weqwewe@qewe'console.log(a.slice(0,a.indexOf('@')))console.log(a.slice((a.indexOf('@')+1)))//翻转字符串var a = 'hello'console.log(a.split().reverse().join())//将一句英文中每个单词首字母大写，其余字母小写a = 'hoW aRE YOu'a = a.split('')for(i = a.length - 1;i >= 0;i--){    if(a[i] === ' '){        a.splice(i + 1,1,a[i + 1].toUpperCase())    }else{                a.splice(i,1,a[i].toLowerCase())    }    if(i == 0){        a.splice(0,1,a[0].toUpperCase())    }}a = a.join('')console.log(a)//获取a到z中的四个随机字符放到新数组a = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']b = []for(i = 0;i < 4;i++){    b.push(a[parseInt(Math.random() * 26)])}console.log(b)
   ```

### 2.Math

​	提供了一组数学方法

```js
Math.PI		获取圆周率Math.abs()		获取绝对值Math.pow(x,y)	获取x的y次方Math.random()	获取随机数，范围0~1，不包括1Math.ceil()		向上取整Math.floor()	向下取整Math.round()	四舍五入取整Math.max()		获取一组数字最大值，暂时不能用数组Math.min()		获取一组数字最小值，暂时不能用数组
```

### 3.date

用于日期时间的存储和计算

1. 创建

   ```js
   new Date('2202/4/18 01:01:01')new Date('2202,3,18,01,01,01')	//月份的值0~11，对应实际1~12new Date()	//存储的是当前操作系统的时间new Date(0)	//存储的是时间戳，相对于计算机元年的毫秒数
   ```

   时间戳：距离计算机元年（1970-1-1 0:0:0.000）的毫秒数

2. 获取日期时间

   ```js
   var d = new Date('2202/4/18 11:23:40.123')console.log(d.getFullYear())	//2202console.log(d.getMonth() + 1)	//4console.log(d.getDate())	//18console.log(d.getHours())	//11console.log(d.getMinutes())	//23console.log(d.getSeconds())	//40console.log(d.getMilliseconds())	//123console.log(d.getDay())	//获取星期，0~6为日~六console.log(d.getTime())	//时间戳console.log(Date.now())	//当前时间戳
   ```

3. 转为本地字符串

   存在兼容性问题，只能用于开发调试阶段

   ```js
   toLocaleString() //转为本地字符串
   ```

4. 设置日期时间

   ```js
   //设置日期时间//没有设置星期APIvar d = new Date('2022/4/18 15:21:30')d.setFullYear('2023')d.setMonth('7')d.setDate('20')d.setTime('111111111111111')	//设置时间戳会产生一个新的日期时间d.setMilliSeconds()console.log(d.toLocaleString())//创建对象，保存当前操作系统的日期时间，修改月份为一个月前，日期为三天后var a = new Date().toLocaleString()
   ```

### 4.Number

整数没有误差

```js
new Number()	包装为对象Number()	强制转换为数值，隐式转换为数值会自动转换toFixed(n)	保留n位小数toString()	转为字符串
```

### 5.Boolean

```js
new Boolean()	包装为对象Boolean()	强制转为布尔型!!值		将一个值隐式转换为布尔型
```

## 3.宿主对象：根据执行环境划分

# 十四、错误处理

## 1.常见的错误

1. 语法错误（SyntaxError）：不符合语法规范，例如：缺少括号，出现中文符号
2. 引用错误（ReferenceError）：引用错误，使用了未声明的变量，影响报错后面的代码，前面的不影响
3. 类型错误（TypeError）：当前调用的不是一个函数类型，例如：API名字写错
4. 自定义错误：程序员指定的错误，throw 抛出错误

## 2.错误处理

出现错误后，不影响后续代码的执行

```js
try{    尝试执行，可能出现错误，出错后不影响后续代码执行}catch(err){    捕获错误    err收集错误信息    解决错误}var arr = ['a','b','c']try{    arr.revese()}catch(err){    //捕获错误    //err捕获到的错误信息    console.log(err)    //解决错误    arr.reverse()}console.log(arr)
```

### 课后任务

```js
//创建函数getDays，传递任意一个日期，返回这个日期是一年的第几天function getDays(year,month,date){    var a = new Date(year,month,date)    //year = a.getFullYear()    var b = new Date(year,0,0)    datetime = a.getTime() - b.getTime()    c = parseInt(datetime / 1000 / 3600 /24)    console.log(c)}getDays(1996,12,31)year = Number(prompt("请输入年份："))month = Number(prompt("请输入月份："))day = Number(prompt("请输入日期："))days = 0if(month < 13 && month > 0 && day < 32 && day > 0){    if(month < 2){        days = day    }else if(month < 3){        days = 31 + day    }else if(month < 9){        if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0){            days = 60 + (month - 3) * 30 + parseInt((month - 2)/2) + day        }else{            days = 59 + (month - 3) * 30 + parseInt((month - 2)/2) + day        }    }else if(month < 13){        if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0){            days = 244 + (month - 9) * 30 + parseInt((month - 9)/2) + day        }else{            days = 243 + (month - 9) * 30 + parseInt((month - 9)/2) + day        }    }    console.log(`${year}年${month}月${day}日是当年的第${days}天`)}else{    console.log("时间错误")}
```

# 十五、ES6

ECMAScript6	JS的第六套标准规范

## 1.块级作用域

let声明的变量不允许重复声明，声明的变量存在提升，但不允许访问

```js
{	块级作用域}块级作用域下let和const声明的属于局部变量或者局部变量
```

## 2.参数增强

可以给参数设置默认值

```js
//参数增强function add(a,b,c = 0){    console.log(a + b + c)}add(5000,8000,500)add(5000,8000)function add(a){    //如果a没有实参，设置默认值为0    //选择将第一个表达式还是第二个表达式赋给a，短路逻辑    a = a || 0    console.log(a)}add()var n1 = 0 && 2console.log(n1)
```

## 3.箭头函数

对匿名函数的简化，和匿名函数不完全一样

```js
function(){}//简化()=>{    }//简化排序var a = [21,331,41,12,3]a.sort((a,b)=>a - b) //函数体重只有一行代码，可以去掉{ return }console.log(a)
```

## 4.模板字面量

简化了字符串的拼接

```js
`${参数}`//假设从后端获取了一条商品数据，包含的属性有编号，标题，价格，是否在售，最后打印a = [1,'a',2,0]console.log(`标题：${a[0]}标题：${a[1]}价格：${a[2]}是否在售：${a[3] == 1 ? '是' : '否'}`)
```

# 十六、node.js

是js运行在服务器的环境

## 1.JS和Node.js对比

1. 都有共同的自定义对象，内置对象，不同的宿主对象

   | JS                                               | Node.js                                            |
   | ------------------------------------------------ | -------------------------------------------------- |
   | 运行在浏览器端，存储多款浏览器，有代码兼容性问题 | 运行在服务器端，只有一种环境，没有代码兼容性问题   |
   | 用于开发浏览器的用户交互                         | 用于服务器端开发，例如：访问数据库，调用其它服务器 |

## 2.运行

脚本模式：node 文件路径

交互模式：node		两次ctrl+c或Ctrl+d或 .exit 退出交互模式

## 3.node.js的特点

1. 简单，避免过度设计
2. 单线程逻辑处理
3. 非阻塞的异步I/O处理
4. 事件驱动变成
5. 无锁机制，不会产生死锁

# 十七、全局对象

在任意作用域下都可以直接使用的对象

1. global对象

   用于检测变量或函数是否是全局

   在浏览器下的名称：window

   ```js
   //编写脚本文件03_global.js，使用var声明变量，在创建函数，检测是否为全局var a = 1let b = 1function f(){    return 2}console.log(window.a,window.b,window.f())	//1 undefined 2
   ```

   浏览器端，每个JS文件都是在全局作用域，存在全局污染

   Node.js，每个JS文件都是一个独立的作用域，不存在全局污染

2. console对象

   用于控制台下输出

   ```js
   console.log('打印日志')console.info('打印消息')console.warn('打印警告')console.error('打印错误')//开始计时console.time(0)for(var i = 1;i <= 10000;i++){    }//结束计时console.timeEnd(0)//查看while循环100000次的耗时console.time(0)var i = 1while(i <= 100000){    i++}console.timeEnd(0)
   ```

3. process对象

   进程：计算机上运行的每个软件都可以看做一个进程，进程有相应的CPU和内存消耗

   process对象查看Node.js的进程

   ```js
   process.arch	//查看当前node.js运行的CPU架构process.platform	//查看服务器端操作系统process.pid		//查看进程编号process.kill()	//结束指定编号的进程
   ```

4. buffer对象

   buffer缓冲区，是内存中临时存储数据的空间

   ```js
   //从内存中分配空间作为缓冲区,单位是字节，字母一字节，汉字三字节var buf = Buffer.alloc(6,'当前')	//创建缓冲区分配6字节console.log(buf)	//存储的是Unicode编码格式console.log(buf.toString())	//将buf转为字符串
   ```

# 十八、模块

每个文件就是一个模块，每个模块是一个独立的功能体

```js
require('另一个模块')		用于引入另一个模块module.exports = {}		当前模块暴露的对象，默认是一个空对象，如果要暴露哪些，只需要添加到对象中
```

```js
//创建主模块（main.js）和功能模块（circle.js），在功能模块下创建两个函数，分别是传递半径，返回周长、面积，暴露出这两个函数，在主模块下调用暴露的函数
```

```js
console.log(__filename)     //获取当前模块的绝对路径和名称console.log(__dirname)      //获取当前模块的绝对路径
```

## 1.模块分类

分为自定义模块、核心模块、第三方模块

|          | 以路径开头                                                   | 不以路径开头                                                 |
| -------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 文件模块 | require('./circle.js')<br />用于引入自定义模块，后缀名可省   | require('fs')<br />用于引入官方提供的核心模块，会到node.js安装的目录中查找 |
| 目录模块 | require('./day')<br />首先会在目录下找package.json文件中main对应的文件，如果找不到会自动寻找index.js文件 | require('day')<br />会到当前目录下的node_modules中寻找目录，如果没有，会向上一级中的node_modules中寻找<br />用于引入第三方模块 |

## 2.包和npm

commonJS：是一种模块化规范，Node.js就是用的这种规范，例如：引入、暴露、查找规则

包（package）：第三方模块

npm：用来管理包的工具，例如：下载、卸载、升级、上传...，绑定node.js安装

### 1.npm命令

中文网址：www.npmjs.cn

```js
npm init -y		生成项目描述文件package.json，记录项目相关的信息npm install 包的名称	下载安装指定的包，将包放到node_modules目录，在package.json中记录这个包的信息，还会生成package-lock.json文件，记录所有包的信息，包括依赖包npm install		会自动下载package.json和package-lock.json中记录的包
```

## 3.网址（URL)

统一资源定位，互联网上的任何资源都有一个对应的网址

查询字符串：前端向后端传递参数的一种方式，格式：参数名=参数值&参数名=参数值

```js
new URL('网址')	//将网址转为对象，获取各个部分searchParams	//查询字符串部分
```

## 4.定时器模块（timer）

提供了一组全局函数，定时器里的函数不在主程序执行，而是在事件队列中执行

![1](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204240928376.png)

### 1.一次性定时器

```js
//开启var timer = setTimeout(回调函数，间隔时间（ms）)	//到间隔时间会执行一次回调函数//清除clearTimeout(timer)
```

### 2.周期性定时器

```js
//开启var timer = setInterval(回调函数，间隔时间（ms）)	//每隔一段时间执行一次回调函数//clearInterval(timer)
```

### 3.立即执行定时器

```js
//开启var timer = setImmediate(回调函数)//清除clearImmediate(timer)//开启process.nextTick(回调函数)	//只有开启
```

## 5.同步和异步

同步：在主程序中执行，会阻止主程序后续代码执行

异步：在主程序后的队列事件执行，不会阻止主程序代码执行

```js
同步：通过返回值获取结果，在主程序执行异步：通过回调函数获取结果，在一个独立线程中执行，执行完后将结果（回调函数）插入到事件队列中
```

![文件操作异步执行](https://gitee.com/shallow_dreamer/pictures1/raw/master/img/202204240930730.png)

## 6.文件系统模块

文件分为目录形式和文件形式

```js
//核心模块：会到node.js的安装目录中找require('fs')
```

### 1.检测文件的状态

```js
statSync('文件路径')	//查看文件状态，同步stat('文件路径'，回调函数)	//通过回调函数查看文件状态，异步isFile()	//查看是否是文件，返回布尔值isDirectory()	//查看是否是目录，返回布尔值
```

### 2.清空写入文件

```js
writeFile('文件路径','写入内容',回调函数)writeFileSync('文件路径','写入内容')//如果文件不存在，会创建文件并写入数据，若存在，会清空文件内容后写入
```

### 3.追加写入文件

```js
appendFileSync('文件路径','写入内容')appendFile('文件路径','写入内容',回调函数)//如果文件不存在，会创建文件并写入数据，若存在，会在文件内容后写入
```

### 4.读取文件

```js
readFileSync('文件路径')readFile('文件路径',回调函数,变量)	//变量用于保存读取的文件内容//返回的是缓存（buffer）类型的数据
```

### 5.删除文件

```js
unlinkSync('文件路径')unlink('文件路径'，回调函数)		//文件不存在会报错
```

### 6.拷贝文件

```js
copyFileSync('源文件路径','目标文件路径')copyFile('源文件路径','目标文件路径',回调函数)
```

### 7.文件流

```js
createReadStream()	//创建读取的文件流，分成多段读取createWriteStream()	//创建写入的文件流，被多次写入pipe()	//管道，连接读取和写入on('事件名称',回调函数)	//监听某一个操作，事件名称是一个固定的字符串，一旦监听到自动执行回调函数
```

# 十九、http协议

超文本传输协议，是浏览器和WEB服务器之间的通信协议

1. 通用头信息（general）

   ```js
   Request URL：请求的网址，要请求的资源Request Method：请求方式，对资源的操作方式，分为增删改查：get（获取）、post（）Status Code：响应的状态码	1**：信息、请求收到，还没有做出响应	2**：成功的响应	3**：相应的重定向，发生了跳转	4**：客户端错误	5**：服务器端错误
   ```

2. 响应头信息（response）

   ```js
   Location：设置要跳转的网址Content-Type：响应的内容类型，解决中文乱码，'text/html;charset=utf-8'
   ```

3. 请求头信息（request）

# 二十、http模块

可以创建WEB服务器

WEB服务器：为前端提供资源的服务器

```js
createServer()	//创建WEB服务器listen()	//设置端口响应对象(res)	res.statusCode = ''		//设置响应的状态码	res.setHeader()		//设置响应的头信息	res.write()		//设置响应的浏览器内容	res.end()		//结束并发送请求对象(req)	req.url		//获取请求的资源	req.method	//获取请求的方式
```

# 二十一、框架

简化已有的功能，添加一些项目中常用的功能，是一整套解决方案

## 1.express框架

基于Node.js平台，快速、开放、极简的WEB开发框架，是第三方模块，下载安装：npm install express

### 1.创建WEB服务器

```js
express()	创建WEB服务器listen()	设置端口
```

### 2.路由

​	处理特定的请求，包括请求的URL、请求的方法、回调函数

```js
//响应对象res.send()	//设置响应内容并发送res.redirect()	//设置相应的重定向并发送res.sendFile()	//设置响应的文件并发送res.status()	//设置状态码res.set({})		//设置头信息//请求对象req.url		//获取请求的URLreq.method 	//获取请求的方法req.query	//获取URL中查询字符串格式的参数//获取路径console.log(__filename)     //获取当前模块的绝对路径和名称console.log(__dirname)      //获取当前模块的绝对路径
```

### 3.路由中传递参数的方式

| 传递方式   | 格式                                             | 获取                                                        |
| ---------- | ------------------------------------------------ | ----------------------------------------------------------- |
| get传递    | http://127.0.0.1:3000/mysearch?kw=参数&a=1       | req.query<br />{kw:参数,a:1}                                |
| params传递 | http://127.0.0.1:3000/mysearch/:参数             | 需要在路由中设置参数名<br />req.params<br />{参数名:参数}   |
| post传递   | http://127.0.0.1:3000/mysearch<br />网址中不可见 | 需要使用中间件操作转为对象<br />req.body<br />{参数名:参数} |

```js
//将post传参转为对象（在路由之前）app.use(express.urlencoded({extended:true/false}))true:使用第三方模false:使用核心模块
```

## 2.路由器

用来管理路由，包含一组路由，最终挂载到WEB服务器

```js
//路由器模块//引入express模块const express = require('express')//创建路由器对象const r = express.Router()//添加路由（get /reg）r.get('/reg',(req,res) => {    res.send('注册成功')})//暴露路由器对象module.exports = r//服务器模块//引入express模块const express = require('express')//引入用户路由器模块const userRouter = require('./user.js')//创建WEB服务器const app = express()//设置端口app.listen(3000,() => {    console.log('服务器已启动')})//将路由器挂载到WEB服务器app.use('/user',userRouter)		//给路由器下路由添加前缀
```

| Cannot set headers after they are sent to the client<br />send()多次执行报错 |
| ------------------------------------------------------------ |

## 3.中间件

拦截对WEB服务器的请求，分为应用级中间件、路由器级中间件、内置中间件、第三方中间件、错误处理中间件

### 1.应用级中间件

也称为自定义中间件，是一个函数，一旦拦截到请求会自动调用函数

```js
function fn(req,res,next){    if(req.query.user !== root){        console.log('')    }else{        next()		//往后执行下一个中间件或路由    }}app.use(拦截的URL，fn)
```

### 2.路由级中间件

就是路由器的使用

```js
app.use(拦截的URL，路由器)//一旦拦截到URL后，到指定的路由器下查找路由
```

### 3.内置中间件

express内部准备好可以直接使用的

1. 将post传递参数转为对象

   ```js
   //拦截所有的post请求app.use(express.urlencoded())
   ```

2. 托管静态资源

   静态资源：html、css、js、图片、视频...

   托管静态资源：浏览器要请求静态资源，不需要通过路由响应文件，而是浏览器自动的寻找

   ```js
   app.use(express.static('托管的目录'))
   ```

### 4.第三方中间件

属于第三方模块，需要先下载安装

#### 练习

```js
//创建web服务器，托管静态资源到public目录，包含登录网页login.html，点击提交向服务器发请求（post /mylogin），获取传递的参数，响应'登录成功，欢迎：'<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <meta http-equiv="X-UA-Compatible" content="IE=edge">    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>Document</title></head><body>    <h1>用户注册</h1>    <form method="post" action="/mylogin">        用户<input type="text" name="user" id=""><br>        密码<input type="password" name="pwd" id=""><br>        <input type="submit" value="提交">    </form></body></html>//引入express模块const express = require('express')//创建WEB服务器const app = express()//设置端口app.listen(3000,() => {    console.log('服务器已启动')})app.use(express.static('C:/Users/39382/Desktop/web前端开发笔记/web前端开发学习代码笔记/第一阶段后端开发/node.js/day05/public'))app.use(express.urlencoded({extended:true}))app.post('/mylogin',(req,res) => {    res.send(`登录成功，欢迎：${req.body.user}`)})
```



# 二十二、mysql模块

node.js下专门操作mysql数据库的模块，属于第三方模块，需先下载安装：npm install mysql

```mysql
mysql.exe -h127.0.0.1 -P3306 -uroot -pinsert into 表名称 values(...)delete from 表名称 where 条件update 表名称 set 列1=值1,列2=值2,... where 条件select * from 表名称 where 条件
```

## 1.连接

```js
createConnection({    host:'127.0.0.1',    port:'3306',    user:'root',    password:'',    database:'tedu'   //连接后进入的数据库})
```

## 2.执行SQL命令

```js
query(SQL命令，[里面的数据会自动过滤],回调函数)	//是异步的方法，需通过回调函数获取结果
```

SQL注入：在要求用户提供的值里面加入特殊的符号，破坏原来的SQL命令

mysql模块提供了（？）占位符，数据过滤后会自动替换占位符

```js
//对所有用户提供的值进行过滤//？ 占位符，最后将过滤后的值进行替换//中间的数组，里面的值就会自动进行过滤var str = 'tao\' or \' 1'c.query(`select *from emp where ename = ?`,[str],(err,r) => {    if(err){        throw err    }    console.log(r)})//假设前端传递一组员工的值，格式为对象，包含的属性有姓名，性别，生日，工资，部门编号，执行命令，插入一条员工数据var a = {    eid:null,    ename:'程晓宇',    sex:0,    birthday:'1995-1-5',    salary:30000,    deptid:30}c.query(`insert into emp set ?`,[a],(err,r) => {    if(err){        throw err    }    console.log(r)})
```

## 3.接口

后端为前端提供的数据——动态资源

Node.js通过每一个路由就可以实现接口

### 1.RESTful接口

是一种接口的架构风格

#### 1.请求的URL

在资源前需要添加版本号

```js
/v1/users
```

名字使用名词，使用复数的形式

```js
//例如：/users		用户的资源//后面加入特殊的操作/users/login//单个资源的操作，需传递编号(如要求params传递)/users/1
```

#### 2.请求的方法，对资源的操作

增删改查

```js
//增（新建资源）post//删（删除资源）delete//改（修改资源）put//查（获取资源）get
```

#### 3.过滤数据（传参）

```js
//获取第一页，每页显示10条数据，传递页码和每页数据量（get传递）/users?pn=1&count=10//获取工资在6000~8000之间的员工/emps?s1=6000&s2=8000
```

#### 4.返回结果

是一个json对象形式，是一种字符串对象，’{}’，属性名用双引号，属性值是字符串的话也要使用双引号，包含状态码，消息

```js
//例如：返回登录的结果'{	"code":"200",    "msg":"登录成功"}'//例如获取一组用户'{	"code":"200",    "msg":"获取成功",    "data":'一组数据'}'
```

# 二十三、正则表达式

备选字符集，有多个可选字符

[]

范围：如果是一组连续的字符，中间部分使用横杠 - ，例如：[0-9],[a-z]

量词：如果是连续相同的字符范围，可以使用 {} ，例如：[0-9]{1,9}

预定义字符集：及其常用的字符集进行了简化，例如：[0-9] 可以使用 \d

特殊位置：

1. 匹配开始的位置：^

2. 匹配结束的位置：$

   可以对一组字符串进行精确匹配

# 二十四、Git

## 1.VSC系统

版本控制系统，用于项目的保存，回退，代码合并，文件追踪

常用vsc软件：CVS、SVN、Git

## 2.Git中的概念

工作目录：就是一个目录，保存项目中所有的文件

暂存区：是内存中的一个区域，用于临时保存文件的变化

Git仓库：是一个特殊的目录，永久保存所有文件变化

## 3.Git常用的命令

1. 第一次使用软件，告诉Git你是谁：

   git config --global user.name ” ” 	设置用户名

   git config --global user.email " " 	设置用户邮箱

2. 初始化Git仓库

   git init 	在当前目录创建.git目录，保存工作目录中文件的变化

3. 查看Git系统的状态

   git status 	显示那些文件发生了变化

4. 将文件添加到暂存区

   git add 文件名称 	添加文件到暂存区

   git add . 	添加所有变化的文件到暂存区

5. 将暂存区所有文件提交到Git仓库

   git commit -m "提交说明"

6. 查看日志

   git log 	查看文件变化日志

7. 回退文件版本

   git reset --hard 	从仓库回退文件版本

   git reflog 	查看回退文件日志

8. 忽略文件

   有些文件不需要Git系统来管理，可以忽略

   使用任意编辑器创建 .gitignore 文件，把需要忽略的文件写进去即可

## 4.分支

如果要执行分支的创建和切换时，要确保工作目录是干净的

1. 创建分支

   git branch 分支名称 	拷贝一份当前分支，作为新的分支

2. 查看所有的分支

   git branch 	列出所有的分支

3. 切换分支

   git checkout 分支名称 	切换到另一个分支

4. 合并分支’

   git merge 	分支合并

   | 如果弹出了窗口，里面要求解释为什么这么合并，直接退出（：qa）<br />（master\|MERGING）：出现了冲突，手动修改，重新提交到仓库 |
   | ------------------------------------------------------------ |

5. 删除分支

   git branch -d 分支名称 	删除已经合并的分支

   git branch -D 分支名称 	删除分支

## 5.远程仓库

代码托管平台

GitHub：全球最大的，www.github.com

码云：国内最大的，www.gitee.com

将本地仓库推送到远程仓库

1. 创建远程仓库并找到地址
2. 推送：git push 仓库地址 分支名称

克隆仓库到本地：git clone 仓库地址