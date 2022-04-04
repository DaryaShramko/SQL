#  SQL_HW_1

 *  1. вывести все поля и все строки
 ``` sql 
select * from students; 
```

*  2. вывести всех студентов в таблице
 ``` sql 
select name from students ; 
```

* 3. вывести только id пользователей
``` sql
select id from students ;
``` 
* 4. вывести только имя пользователей 
``` sql
select name from students ; 
```

* 5. вывести только email пользователей
``` sql
select email from students ;
```

* 6. вывести имя и email пользователей 
``` sql
select name, email from students ;
``` 

* 7. вывести id, имя, email и дату создания пользователей
``` sql
select id, name, email, created_on from students ;
```

*  8. вывести пользователей где пароль 1233
``` sql   
      select name from students
where password = '12333'; 
``` 

* 9. вывести пользователей которые были созданы 2021-03-26 00:00:00
``` sql
select name, created_on  
from students
where created_on in ('2021-03-26 00:00:00'); 
```

* 10. вывести пользоваетелей где в имени есть слово Аnna
``` sql
select name  
from students
where name like ('Anna%'); 
```

*  11. вывести пользоваетелей где в имени в конфе есть 8
``` sql
select name  
from students
where name like ('%8'); 
```

* 12. вывести пользователец где в имен и есть буква а
``` sql 
 select name  
from students
where name like ('%a') or name like ('%a$') or name like ('a%'); 
```

* 13. вывести пользоваетелей которые были созданы 2021-07-12 00:00:00
``` sql
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00'); 
```

* 14.вывести вывести пользоваетелей которые были созданы 
`` sql
2021-07-12 00:00:00 и имеют пароль 1m313; 
select name, password, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and password = '1m313'; 
```

* 15. вывести пользоваетелей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть Andrey
``` sql
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and (name like ('Andrey%') or name like ('%Andrey%') or name like ('%Andrey'));
```

* 16. вывести пользователей которые были созданы 2021-07-12 00:00:00 и в имени у которых есть цифра 8 
``` sql
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and (name like ('8%') or name like ('%8%') or name like ('%8')) ;
```

*  17. вывести пользоваетелей у которых id равен 110 
``` sql
select id, name
from students 
where id = 110 ;
``` 

* 18. вывести пользоваетелей у которых id  153 

``` sql
select id, name
from students 
where id = 153 ;
```

* 19. вывести пользоваетелей у которых id больше 140 
``` sql
select id, name
from students 
where id > 140 ;
```

* 20. вывести пользоваетелей у которых id меньше 130
``` sql
select id, name
from students 
where id < 130 ;
```

* 21. вывести пользоваетелей у которых id меньше 127 или больше 188 
``` sql
select id, name
from students 
where id < 127 or id > 188 ;
```

* 22. вывести пользоваетелей у которых id меньше либо равно 137  
``` sql
select id, name
from students 
where id <= 137;
```

* 23. вывести пользоваетелей у которых id больше либо равно 137
``` sql
select id, name
from students 
where id >= 137;
```

* 24. вывести пользоваетелей у которых id больше 180 но меньше 190
``` sql
select id, name
from students 
where id > 180 and id < 190;  

-- также возможно такое решение
select id, name
from students 
where id between  181 and 189; 
``` 

* 25. вывести пользоваетелей у которых id между 180 и 190
``` sql

select id, name
from students 
where id between  180 and 190;
```

* 26. вывести пользователей где password  равен 12333, 1m313, 123313
``` sql
select name, password 
from students 
where password in ('12333') or password in ('1m313') or password in  ('123313'); 
``` 

* 27. вывести пользоваетелей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00 
``` sql
select name, created_on  
from students
where created_on in ('2020-10-03 00:00:00') or created_on in ('2021-05-19 00:00:00') or created_on in ('2021-03-26 00:00:00');
```

* 28. вывести минимальный id 
``` sql
select min(id) 
from students ;
```

* 29. вывести максимальный id 
``` sql
select max(id) from students; 
```

* 30. вывести количество пользователей
``` sql
select max(id) as Количество_пользователей from students ;
``` 

* 31. вывести id пользователя, имя, дату создания пользователяю отсортировать по порядку возрастания даты добавления пользователей
``` sql
select id, name, created_on 
from students 
order by created_on ; 
``` 

* 32. вывести id пользователя, имя, дату создания пользователяю отсортировать по порядку убывания даты добавления пользователей
``` sql
select id, name, created_on 
from students 
order by created_on desc; 
``` 
# SQL HW 2
 
 1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками 
``` sql

CREATE TABLE employees195 (id SERIAL primary key, employee_name VARCHAR(50) not NULL ); 

insert into employees195 (employee_name) values ('Andrey1'); 
insert into employees195 (employee_name) values ('Andrey2'); 
insert into employees195 (employee_name) values ('Anna1'); 
insert into employees195 (employee_name) values ('Polina3'); 
insert into employees195 (employee_name) values ('Inna1'); 
insert into employees195 (employee_name) values ('Yura2'); 
insert into employees195 (employee_name) values ('Andrey4'), ('Vanya1'); 
insert into employees195 (employee_name) values ('Fedor1'), ('Anna7'), ('Canya6'), ('Sergey1'), ('Renat1'), ('Nina1'), ('Anna6'), ('Dima1'), ('Dima7'), ('Sasha1'), ('Jora1'), ('Kirill1'), ('Horiton1'), ('Anna9'), ('Sergey11'), ('Zina1'), ('Dasha1'), ('Alexandr1'), ('Vasilii1'), ('Irina1'), ('Valentina1'), ('Nadezhda1'), ('Victor1'), ('Slava1'), ('Nikita1'), ('Olesia1'), ('Irina2'), ('Valentina2'), ('Nadezhda2'), ('Victor2'), ('Slava2'), ('Nikita2'), ('Olesia2'), ('Irina3'), ('Valentina3'), ('Nadezhda3'), ('Victor3'), ('Slava3'), ('Nikita3'), ('Olesia3'), ('Irina4'), ('Valentina4'), ('Nadezhda4'), ('Victor4'), ('Slava4'), ('Nikita4'), ('Olesia4'), ('Dasha2'), ('Irina5'), ('Valentina5'), ('Nadezhda5'), ('Victor5'), ('Slava5'), ('Nikita5'), ('Olesia5'), ('Dasha3'), ('Vasiya3'), ('Irina7'), ('Valentina7'), ('Nadezhda7'), ('Victor7'), ('Slava7'); 

select * from employees195 ;
``` 

 2. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500 

``` sql
CREATE TABLE salary195 (id SERIAL primary key, monthly_salary INT not NULL );
insert into salary195 (monthly_salary) values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);
select * from salary195; 
``` 

 3. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id 

``` sql
CREATE TABLE employee_salary195 (id SERIAL primary key, employee_id INT not null unique, salary_id int not null);
insert into employee_salary195 (employee_id, salary_id) values (1, 2), (2, 5), (3, 5), (4, 6), (5, 2), (6, 1), (7, 8), (8, 1), (9, 5), (10, 5), (11, 6), (12, 3), (13, 2), (14, 10), (15, 8), (16, 5), (17, 3), (18, 3), (19, 9), (20, 1), (21, 13), (22, 4), (23, 8), (24, 1), (25, 6), (27, 6), (29, 1), (30, 4), (89, 2), (99, 1), (101, 3), (84, 9), (96, 1), (123, 6), (142, 3), (132, 1), (106, 7), (139, 9);
select * from employee_salary195 ;
``` 

4.  Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками  
``` sql

CREATE TABLE roles195 (id SERIAL primary key, role_name INT not null unique);
alter table roles195 alter column role_name type varchar(30);
insert into roles195 (role_name) values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'), 
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer'); 
select * from roles195; 
``` 

5. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками

``` sql
CREATE TABLE roles_eployee195 (id SERIAL primary key, employee_id INT not null unique, role_id  INT not null, foreign key (employee_id) references employees195 (id), foreign key (role_id) references roles195 (id) ) ;

insert into roles_eployee195 (employee_id, role_id) values (1, 3), (2, 5), (3, 5), (7, 2), (20, 4), (9, 9), (5, 13), (23, 4), (11, 2), (10, 2), (22, 13), (21, 3), (34, 4), (6, 7), (36, 7), (39, 7), (41, 5), (46, 2), (43, 6), (47, 9), (50, 6), (55, 8), (60, 7), (62, 4), (65, 7), (63, 4), (51, 4), (45, 7), (52, 2), (53, 4), (56, 8), (66, 4), (25, 7), (29, 7), (31, 2), (26, 9), (27, 1), (42, 1), (38, 6); 
insert into roles_eployee195 (employee_id, role_id) values (17, 2); 
select * from roles_eployee195; 
```

# SQL HW3


* 1. вывести всех работников чьи зарплаты в базе, вместе с зарплатами
 
``` sql
select employee_salary195.employee_id, employee_salary195.salary_id, salary195.monthly_salary from employee_salary195 
inner join salary195 on employee_salary195.salary_id = salary195.id ;
```

* 2. вывести всех работников у которых ЗП меньше 2000 
``` sql
select employee_salary195.employee_id, employee_salary195.salary_id, salary195.monthly_salary from employee_salary195
inner join salary195 on employee_salary195.salary_id = salary195.id
where salary195.id < 11; 
```

* 3. вывести все зарплатные позиции но работник по ним не назначен (ЗП есть но непонятно кто ее получает)
``` sql
select  salary195.id, salary195.monthly_salary, employee_salary195.employee_id, employee_salary195.salary_id from salary195
left join employee_salary195 on employee_salary195.salary_id = salary195.id
where  employee_id is null ; 
``` 

* 4. вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто ее получает)
``` sql
select  salary195.id, salary195.monthly_salary, employee_salary195.employee_id, employee_salary195.salary_id from salary195
left join employee_salary195 on employee_salary195.salary_id = salary195.id
where salary_id < 11 and employee_id is null ; 
```

* 5. Найти всех работников кому не начислена ЗП
``` sql
select  employees195.employee_name, employee_salary195.employee_id, employee_salary195.salary_id from employees195
left join employee_salary195 on employees195.id = employee_salary195.employee_id
where employee_id is null and salary_id is null; 
```

* 6. вывести всех работников с названиями должности 
``` sql
select  employees195.employee_name, roles_eployee195.employee_id, roles_eployee195.role_id from employees195
left join roles_eployee195 on employees195.id = roles_eployee195.employee_id
where employee_id is not null; 
```

* 7. вывести все имена и должность только Java разработчиков 
``` sql
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Java%';
```

* 8. вывести имена и должность только Python разработчиков
``` sql
 select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Python%';
```

* 9. вывести имена и должность всех QA инженеров
``` sql
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%QA%';
``` 

* 10. вывести имена и должность всех ручных QA инженеров
``` sql
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Manual%';
```

* 11. вывести имена и должность всех автоматизаторов QA 
``` sql
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Automat%';
```

* 12. вывести имена и должность всех Junior специалистов
``` sql
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Jun%';
```

* 13. вывести имена и зарплаты всех Junior специалистов
``` sql
 для создания запроса необходимо создать дополнительную таблицу, в которой будут присвоены зарплаты для каждой должности

CREATE TABLE roles_salary195 (id SERIAL primary key, role_id INT not null, salary_id int not null, foreign key (role_id) references roles195 (id), foreign key (salary_id) references salary195 (id) ) ;

insert into roles_salary195 (role_id, salary_id) values (1, 10), (2, 15), (3, 1), (4, 6), (5, 14), (6, 2), (7, 3), (8, 9), (9, 15), (10, 2), (11, 12), (13, 15), (14, 10), (15, 7), (16, 15), (17, 7), (18, 3), (19, 5), (20, 7); 
select * from roles_salary195; 


select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Junior%'; 
```

* 14. вывести все имена и зарплаты для Middle специалистов 
``` sql
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Middle%'; 
```

* 15. вывести зарплаты Java разработчиков 
``` sql
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Java%'; 
```

* 16. вывести зарплаты Python разработчиков 
``` sql
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Python%';
```

* 17. вывести имена и зарплаты Junior Python разработчиков 
``` sql
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Junior% %Python%'; 
```

* 18. вывести имена и зарплаты Middle JS разработчиков 
``` sql
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Middle% %J%S%'; 
```

* 19. вывести имена и зарплаты Senior Java разработчиков
``` sql
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Senior% %Java%'; 
```

* 20. вывести зарплаты Junior QA инженеров
``` sql
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Junior% %QA%';
```

* 21. вывести среднюю зарплату всех Junior специалистов
``` sql 
select roles195.role_name, round(AVG(salary195.monthly_salary), 2) 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%Junior%';
```

* 22. вывести сумму зарплат JS разработчиков
``` sql
select  sum(salary195.monthly_salary) as sum_salary_js 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%J% %S%';
```

* 23. вывести минимальную зарплату QA инженеров
``` sql
select roles195.role_name, min(salary195.monthly_salary) as min_salary_qa 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%QA%';
```

* 24. вывести максимальную зарплату QA инженеров
``` sql
select roles195.role_name, max(salary195.monthly_salary) as max_salary_qa 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%QA%';
```

* 25. вывести количество QA инженеров
``` sql
select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%QA%'
group by employee_name, roles195.role_name;
```

* 26. вывести количество Middle специалистов
``` sql
select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Middle%'
group by employee_name, roles195.role_name;
``` 

* 27. вывести количество разработчиков
``` sql
select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%develop%'
group by employee_name, roles195.role_name;
```

* 28. вывести  фонд (сумму) зарплат разработчиков
``` sql
-- фонд на месяц

select sum(salary195.monthly_salary) as sum_salary_developers 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%develop%'



-- фонд на год 
select  (sum(salary195.monthly_salary) * 12) as sum_salary_developers_year 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%develop%';
``` 

* 29. вывести имена, должности и ЗП всех специалистов по возрастанию 
``` sql
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 
``` 

* 30. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП от 1700 до 2300
``` sql
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary between 1700 and 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 
```

* 31. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП меньше 2300
``` sql
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary < 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 
```

* 32. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП равна 1100, 1500, 2300
``` sql
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ;
```
