--ЛР8--

--1. Вчителі відсортовані за прізвищем
select surname, name, fname from Teachers
order by surname asc;

--2. Кількість вчителів які вчать певну мову
select Languages.name, Count(Teachers.id)
from Courses join Teachers on Teachers.id = Courses.id_teacher
			join Languages on Languages.id = Courses.id_language
group by Languages.name;

--3. Наймолодший вчитель
select surname, name, fname, datebd from Teachers
order by datebd desc
fetch first 1 rows only;

--4. Студенти відсортовані за ім'ям та прізвищем
select surname, name, fname, datebd from Students
order by name asc, surname asc;

--5. Кількість груп, які вчуть певний курс
select Courses.name, Count(Groups.id)
from Courses join Groups on Courses.id = Groups.id_course
group by Courses.name;

--6. 3 найдосвідченіших вчителя
select surname, name, fname, startdate from Teachers
order by startdate asc
fetch first 3 rows only;

--7. Студенти відсортовані за датою народження
select surname, name, fname, datebd from Students
order by datebd asc;

--8. Кількість студентів з однаковим прізвищем
select surname, Count(id)
from Student
group by surname;

--9. Список мов, відсортовані за назвою
select name from Languages
order by name;

--10. Найпопулярніша мова
select Languages.name, Count(Courses.id)
from Courses join Languages on Languages.id = Courses.id_language
group by Languages.name
order by Count(Courses.id) desc
fetch first 1 rows only;