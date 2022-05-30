--1. Запит на виконання проекції (відображення) для таблиць БД.
drop view view1;
create view view1 as select distinct surname, name, fname from Teachers;   
select * from view1;

--2. Запит на виконання складної проекції для таблиць БД
--Прізвище починається на Д
drop view view2;
create view view2 as select distinct surname, name, fname from Teachers
    where surname like 'Д%';   
select * from view2;

--3. Запит на виконання селекції з використанням будь-якої складної умови відбору для таблиць БД.
select * from Teachers 
where to_char(datebd, 'DD.MM') = to_char(SYSDATE, 'DD.MM');

--4. Запит на виконання натурального з’єднання у будь-яких таблицях вашої БД.
select Courses.name, Courses.year, Languages.name
from Courses, Languages
where Languages.id = Courses.id_language;

--5. Запит на виконання умовного з’єднання для таблиць вашої БД
select Courses.name, Courses.year, Languages.name
from Courses, Languages
where Languages.id = Courses.id_language and Languages.name like 'Анг%';