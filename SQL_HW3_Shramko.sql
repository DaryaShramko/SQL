-- 1. вывести всех работников чьи зарплаты в базе, вместе с зарплатами
select employee_salary195.employee_id, employee_salary195.salary_id, salary195.monthly_salary from employee_salary195 
inner join salary195 on employee_salary195.salary_id = salary195.id ;


-- 2. вывести всех работников у которых ЗП меньше 2000
select employee_salary195.employee_id, employee_salary195.salary_id, salary195.monthly_salary from employee_salary195
inner join salary195 on employee_salary195.salary_id = salary195.id
where salary195.id < 11; 

-- 3. вывести все зарплатные позиции но работник по ним не назначен (ЗП есть но непонятно кто ее получает)

select  salary195.id, salary195.monthly_salary, employee_salary195.employee_id, employee_salary195.salary_id from salary195
left join employee_salary195 on employee_salary195.salary_id = salary195.id
where  employee_id is null ; 

-- 4. вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто ее получает)
select  salary195.id, salary195.monthly_salary, employee_salary195.employee_id, employee_salary195.salary_id from salary195
left join employee_salary195 on employee_salary195.salary_id = salary195.id
where salary_id < 11 and employee_id is null ; 

-- 5. Найти всех работников кому не начислена ЗП
select  employees195.employee_name, employee_salary195.employee_id, employee_salary195.salary_id from employees195
left join employee_salary195 on employees195.id = employee_salary195.employee_id
where employee_id is null and salary_id is null; 

-- 6. вывести всех работников с названиями должности 
select  employees195.employee_name, roles_eployee195.employee_id, roles_eployee195.role_id from employees195
left join roles_eployee195 on employees195.id = roles_eployee195.employee_id
where employee_id is not null; 

-- 7. вывести все имена и должность только Java разработчиков 

select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Java%';

-- 8. вывести имена и должность только Python разработчиков
 select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Python%';

-- 9. вывести имена и должность всех QA инженеров
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%QA%';

-- 10. вывести имена и должность всех ручных QA инженеров
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Manual%';

-- 11. вывести имена и должность всех автоматизаторов QA 
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Automat%';

-- 12. вывести имена и должность всех Junior специалистов
select employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Jun%';

-- 13. вывести имена и зарплаты всех Junior специалистов
-- для создания запроса необходимо создать дополнительную таблицу, в которой будут присвоены зарплаты для каждой должности

CREATE TABLE roles_salary195 (id SERIAL primary key, role_id INT not null, salary_id int not null, foreign key (role_id) references roles195 (id), foreign key (salary_id) references salary195 (id) ) ;

insert into roles_salary195 (role_id, salary_id) values (1, 10), (2, 15), (3, 1), (4, 6), (5, 14), (6, 2), (7, 3), (8, 9), (9, 15), (10, 2), (11, 12), (13, 15), (14, 10), (15, 7), (16, 15), (17, 7), (18, 3), (19, 5), (20, 7); 
select * from roles_salary195; 


select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Junior%'; 

-- 14. вывести все имена и зарплаты для Middle специалистов 

select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Middle%'; 

-- 15. вывести зарплаты Java разработчиков 
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Java%'; 

-- 16. вывести зарплаты Python разработчиков 
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Python%';

-- 17. вывести имена и зарплаты Junior Python разработчиков 
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Junior% %Python%'; 

-- 18. вывести имена и зарплаты Middle JS разработчиков 
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Middle% %J%S%'; 

-- 19. вывести имена и зарплаты Senior Java разработчиков
select employees195.employee_name, salary195.monthly_salary 
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where role_name  like '%Senior% %Java%'; 

-- 20. вывести зарплаты Junior QA инженеров
select roles195.role_name, salary195.monthly_salary 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
where role_name  like '%Junior% %QA%';

-- 21. вывести среднюю зарплату всех Junior специалистов
select roles195.role_name, round(AVG(salary195.monthly_salary), 2) 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%Junior%';

-- 22. вывести сумму зарплат JS разработчиков
select  sum(salary195.monthly_salary) as sum_salary_js 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%J% %S%';

-- 23. вывести минимальную зарплату QA инженеров
select roles195.role_name, min(salary195.monthly_salary) as min_salary_qa 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%QA%';

-- 24. вывести максимальную зарплату QA инженеров
select roles195.role_name, max(salary195.monthly_salary) as max_salary_qa 
from roles195 join roles_salary195 on roles_salary195.id = roles_salary195.id 
join salary195 on roles_salary195.salary_id = salary195.id 
group by role_name 
Having role_name  like '%QA%';

-- 25. вывести количество QA инженеров

select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%QA%'
group by employee_name, roles195.role_name;

-- 26. вывести количество Middle специалистов

select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%Middle%'
group by employee_name, roles195.role_name;

-- 27. вывести количество разработчиков

select employees195.employee_name, roles195.role_name,  count(roles195.role_name)
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles195 on roles195.id = roles_eployee195.role_id
where role_name like '%develop%'
group by employee_name, roles195.role_name;

-- 28. вывести  фонд (сумму) зарплат разработчиков

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


-- 29. вывести имена, должности и ЗП всех специалистов по возрастанию 
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 

-- 30. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП от 1700 до 2300
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary between 1700 and 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 

-- 31. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП меньше 2300
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary < 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ; 

-- 32. вывести имена, должности и ЗП всех специалистов по возрастанию у которых ЗП равна 1100, 1500, 2300
select salary195.monthly_salary, employees195.employee_name, roles195.role_name
from employees195 join roles_eployee195 on employees195.id = roles_eployee195.employee_id 
join roles_salary195 on roles_salary195.role_id = roles_eployee195.role_id
join roles195 on roles_eployee195.role_id = roles195.id 
join salary195 on roles_salary195.salary_id = salary195.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2300
order by salary195.monthly_salary, employees195.employee_name, roles195.role_name  ;