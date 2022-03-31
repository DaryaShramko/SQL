-- 1. ������� ��� ���� � ��� ������
select * from students; 

-- 2. ������� ���� ��������� � �������
select name from students ; 

-- 3. ������� ������ id �������������
select id from students ;

-- 4. ������� ������ ��� ������������� 
select name from students ; 

-- 5. ������� ������ email �������������
select email from students ;

-- 6. ������� ��� � email ������������� 
select name, email from students ;

-- 7. ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students ;

-- 8. ������� ������������� ��� ������ 1233
select name from students
where password = '12333'; 

-- 9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select name, created_on  
from students
where created_on in ('2021-03-26 00:00:00'); 

-- 10. ������� �������������� ��� � ����� ���� ����� �nna
select name  
from students
where name like ('Anna%'); 

-- 11. ������� �������������� ��� � ����� � ����� ���� 8
select name  
from students
where name like ('%8'); 

-- 12. ������� ������������� ��� � ���� � ���� ����� �
select name  
from students
where name like ('%a') or name like ('%a$') or name like ('a%'); 

-- 13. ������� �������������� ������� ���� ������� 2021-07-12 00:00:00
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00'); 
 

-- 14.������� ������� �������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313; 
select name, password, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and password = '1m313'; 

-- 15. ������� �������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� Andrey
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and (name like ('Andrey%') or name like ('%Andrey%') or name like ('%Andrey'));

-- 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ����� � ������� ���� ����� 8 
select name, created_on  
from students
where created_on in ('2021-07-12 00:00:00') and (name like ('8%') or name like ('%8%') or name like ('%8')) ;

-- 17. ������� �������������� � ������� id ����� 110 
select id, name
from students 
where id = 110 ;

-- 18. ������� �������������� � ������� id  153 
select id, name
from students 
where id = 153 ;

-- 19. ������� �������������� � ������� id ������ 140 
select id, name
from students 
where id > 140 ;

-- 20. ������� �������������� � ������� id ������ 130
select id, name
from students 
where id < 130 ;

-- 21. ������� �������������� � ������� id ������ 127 ��� ������ 188 
select id, name
from students 
where id < 127 or id > 188 ;

-- 22. ������� �������������� � ������� id ������ ���� ����� 137  
select id, name
from students 
where id <= 137;

-- 23. ������� �������������� � ������� id ������ ���� ����� 137
select id, name
from students 
where id >= 137;

-- 24. ������� �������������� � ������� id ������ 180 �� ������ 190
select id, name
from students 
where id > 180 and id < 190;  

-- ����� �������� ����� �������
select id, name
from students 
where id between  181 and 189; 

-- 25. ������� �������������� � ������� id ����� 180 � 190

select id, name
from students 
where id between  180 and 190;

-- 26. ������� ������������� ��� password  ����� 12333, 1m313, 123313
select name, password 
from students 
where password in ('12333') or password in ('1m313') or password in  ('123313'); 

-- 27. ������� �������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00 
select name, created_on  
from students
where created_on in ('2020-10-03 00:00:00') or created_on in ('2021-05-19 00:00:00') or created_on in ('2021-03-26 00:00:00');

-- 28. ������� ����������� id 
select min(id) 
from students ;

-- 29. ������� ������������ id 
select max(id) from students; 

-- 30. ������� ���������� �������������
select max(id) as ����������_������������� from students ;

-- 31. ������� id ������������, ���, ���� �������� ������������� ������������� �� ������� ����������� ���� ���������� �������������

select id, name, created_on 
from students 
order by created_on ; 

-- 32. ������� id ������������, ���, ���� �������� ������������� ������������� �� ������� �������� ���� ���������� �������������

select id, name, created_on 
from students 
order by created_on desc; 