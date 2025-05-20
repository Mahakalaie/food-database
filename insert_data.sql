insert into users (name, national_id)
values ('Mahak Alaie', 0200505050);

insert into students (user_id, student_code, discipline)
values (1, 40313004, 'Computer Science');

insert into users (name, national_id)
values ('Maryam Ahmadi', 0200404040);

insert into professors (user_id, personnel_code, department, position)
values (2, 100200300, 'Maths', 'Associate Professor');

insert into food (food_name, price)
values ('Pizza', 200000);

insert into food (food_name, price)
values ('Pasta', 100000);

insert into food (food_name, price)
values ('Ghormeh Sabzi', 150000);

insert into menus (menu_date, food_id)
values (current_date, 1);

insert into menus (menu_date, food_id)
values (current_date, 2);

insert into orders (user_id, menu_id, number)
values (1, 1, 3);

insert into orders (user_id, menu_id, number)
values (1, 2, 1);

insert into orders (user_id, menu_id, number)
values (2, 1, 2);