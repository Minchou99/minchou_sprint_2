drop database if exists personal_project;
create database personal_project;
use personal_project;

create table category (
id int primary key auto_increment,
name varchar (255)
);

create table  product (
id int primary key auto_increment,
origin varchar (255),
color varchar (255),
size varchar (255),
quantity varchar (255),
descriptions text,
is_delete bit,
category_id int,
foreign key (category_id) references category (id) 
);

create table image(
id int primary key auto_increment,
image_name varchar (255),
 product_id int,
foreign key ( product_id) references  product(id) 
);

create table account (
id int primary key auto_increment,
is_delete bit,
password varchar (255),
status_lock bit,
username varchar(255)
);

create table role(
id int primary key auto_increment,
name varchar(255)
);

create table acount_role(
id int primary key auto_increment,
account_id int,
role_id int,
foreign key (account_id) references account(id),
foreign key (role_id) references role(id)
);

create table address(
id int primary key auto_increment,
city varchar (255),
country varchar (255),
detail_address varchar (255),
district varchar (255),
town varchar (255)
);


create table user(
id int primary key auto_increment,
avatar varchar (255),
birthday varchar (255),
email varchar (255),
first_name varchar (255),
last_name varchar (255),
id_card varchar (255),
phone varchar (255),
account_id int,
address_id int,
foreign key (account_id) references account(id),
foreign key (address_id) references address(id)
);

create table payment(
id int primary key auto_increment,
is_delete bit,
payment_status bit,
shipping_description varchar(255),
user_id int,
product_id int,
foreign key (user_id) references user(id),
foreign key ( product_id) references  product(id)
);

create table cart(
id int primary key auto_increment,
product_id int,
user_id int,
foreign key ( product_id) references  product(id),
foreign key (user_id) references user(id)
);


