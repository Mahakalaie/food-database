create database food_db;
use food_db;

create table users (
  user_id int primary key auto_increment,
  name nvarchar(100) not null,
  national_id int not null
);

create table students (
  student_id int primary key auto_increment,
  user_id int not null unique,
  foreign key (user_id) references users(user_id),
  student_code int not null unique,
  discipline nvarchar(100) not null
);

create table professors (
  professor_id int primary key auto_increment,
  user_id int not null unique,
  foreign key (user_id) references users(user_id),
  personnel_code int not null unique,
  department nvarchar(100) not null,
  position nvarchar(100) not null
);

create table food (
  food_id int primary key auto_increment,
  food_name nvarchar(200) not null,
  price int not null
);

create table menus (
  menu_id int primary key auto_increment,
  menu_date date not null,
  food_id int not null,
  foreign key (food_id) references food(food_id)
);

create table orders (
  order_id int primary key auto_increment,
  user_id int not null,
  foreign key (user_id) references users(user_id),
  menu_id int not null,
  foreign key (menu_id) references menus(menu_id),
  number int not null check ( number > 0 )
);