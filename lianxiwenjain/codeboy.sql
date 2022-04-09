#设置连接编码
set names utf8;
#丢弃数据库xz2,如果存在
drop database if exists xz2;
#创建数据库xz2
create database xz2 charset='utf8';
#使用数据库
use xz2;
#创建数据表xz_user、xz_receiver_address、xz_order、xz_shopping_cart、xz_order_detail、xz_laptop、xz_laptop_pic、xz_laptop_family、xz_index_product、xz_index_carousel
create table xz_user(
    uid int primary key auto_increment,
    uname varchar(32) not null,
    upwd varchar(32) not null,
    email varchar(64),
    phone varchar(16) not null unique,
    avatar varchar(128),
    user_name varchar(32) not null,
    gender int
);
create table xz_receiver_address(
    aid int primary key auto_increment,
    user_id int,
    receiver varchar(16),
    province varchar(16),
    city varchar(16),
    county varchar(16),
    address varchar(128),
    cellphone varchar(16),
    fixedphone varchar(16),
    postcode char(6),
    tag varchar(16),
    is_default tinyint,
    constraint fk_uid_user_receiver_address foreign key(user_id) references xz_user(uid)
);
create table xz_order(
    aid int primary key auto_increment,
    user_id int,
    address_id int,
    status int,
    order_time bigint,
    pay_time bigint,
    deliver_time bigint,
    received_time bigint,
    constraint fk_aid_receiver_address foreign key (address_id) references xz_receiver_address(aid),
    constraint fk_uid_user_order foreign key (user_id) references xz_user(uid)
);
create table xz_laptop_family(
    fid int primary key auto_increment,
    name varchar(32)
);
create table xz_laptop(
    lid int primary key auto_increment,
    family_id int,
    title varchar(128),
    subtitle varchar(128),
    price decimal(10,2),
    promise varchar(64),
    spec varchar(64),
    name varchar(32),
    os varchar(32),
    memory varchar(32),
    resolution varchar(32),
    video_card varchar(32),
    cpu varchar(32),
    video_memory varchar(32),
    category varchar(32),
    disk varchar(32),
    detail varchar(1024),
    shelf_time bigint,
    sold_count int,
    is_onsale tinyint,
    constraint fk_fid_laptop_family_laptop foreign key (family_id) references xz_laptop_family(fid)
);
create table xz_shopping_cart(
    cid int primary key auto_increment,
    user_id int,
    product_id int not null,
    count int,
    constraint fk_uid_user_shopping_cart foreign key (user_id) references xz_user(uid),
    constraint fk_lid_laptop_shopping_cart foreign key (product_id) references xz_laptop(lid)
);
create table xz_oreder_detail(
    did int primary key auto_increment,
    order_id int,
    product_id int,
    count int,
    constraint fk_aid_order_order_detail foreign key (order_id) references xz_order(aid),
    constraint fk_lid_laptop_order_detail foreign key (product_id) references xz_laptop(lid)
);
create table xz_laptop_pic(
    pid int primary key auto_increment,
    laptop_id int,
    sm varchar(128),
    md varchar(128),
    lg varchar(128),
    constraint fk_lid_laptop_laptop_pic foreign key (laptop_id) references xz_laptop(lid)
);
create table xz_index_product(
    pid int primary key auto_increment,
    title varchar(64),
    details varchar(128),
    pic varchar(128),
    price decimal(10,2),
    href varchar(128),
    seq_recommended tinyint,
    seq_new_arrival tinyint,
    seq_top_sale tinyint
);
