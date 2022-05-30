--1 Найбільший рік вивчення курсу
select MAX(year)
from Courses;

--2 Загальна кількість вчителів
select Count(id)
from Teachers;

--3 Кількість курсів, які вчать англ. мову
select Count(Courses.id)
from Courses join Languages on Languages.id = Courses.id_language
where Languages.name like 'Анг%';

--4. Найстарший вчитель
select surname, name, datebd
from Teachers
where datebd = (select Min(datebd) from Teachers); 

--5. Кількість груп, які вчать певний курс
select Courses.name, Count(Groups.id)
from Courses join Groups on Courses.id = Groups.id_course
group by Courses.name;