--ЛР8-- 
 
--1. Вчителі відсортовані за прізвищем 
select surname, name, fname from Teachers 
order by surname asc; 
 
 
--2. Наймолодший вчитель 
select surname, name, fname, datebd from Teachers 
order by datebd desc 
fetch first 1 rows only; 
 
--3. Студенти відсортовані за ім'ям та прізвищем 
select surname, name, fname, datebd from Students 
order by name asc, surname asc; 
 
--4. 3 найдосвідченіших вчителя 
select surname, name, fname, startdate from Teachers 
order by startdate asc 
fetch first 3 rows only; 
 
--5. Студенти відсортовані за датою народження 
select surname, name, fname, datebd from Students 
order by datebd asc; 
 
--6. Список мов, відсортовані за назвою 
select name from Languages 
order by name;
