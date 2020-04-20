create schema if not exists shop;
use shop;

drop table if exists users;
create table users (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  birthday varchar(255),
  created_at varchar(255),
  updated_at varchar(255),
  age INT
  ##created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  ##updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'users';
  
insert into users (birthday, created_at, updated_at) values ('2019-05-22 23:32:21',NOW(), NOW()); -- 1 задание

update users set created_at =str_to_date (created_at, '%Y-%m-%d %H:%i:%s'), -- 2 задание
updated_at = str_to_date (updated_at, '%Y-%m-%d %H:%i:%s'), 
birthday = str_to_date (birthday, '%Y-%m-%d %H:%i:%s');
alter table users modify created_at datetime, modify updated_at datetime;

select * from storehouses_products order by case when value = 0 then value end, value; -- задание 3

select * from users where date_format(birthday, '%M') in ('May', 'August'); -- 4 задание

select * from catalogs where id in (5,1,2); -- задание 5
select * from catalogs where id in (5,1,2) order by field (id, 5,1,2);


select * from users;

insert into users (age) values (4),(7),(12), (54);
select avg(age) from users; ## Агрегация данных - задание 1;
select DAYOFWEEK(date_add(birthday, INTERVAL (date_format(NOW(),'%Y') - date_format(birthday, '%Y')) YEAR)) from users;## Агрегация данных - задание 2;










