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
