--1 Вчителі, призвище яких починається на М
select surname, name, fname from Teachers
where surname like 'М%';

--2. Найстарший вчитель
select surname, name, fname, datebd from Teachers
order by datebd asc
fetch first 1 rows only;

--3. Вчителі відсортовані за прізвищем
select surname, name, fname from Teachers
order by surname asc;

--4 Учні, ім'я та прізвище яких починається Д
select surname, name, fname from Students
where surname like 'Д%' and name like 'Д%';

--5 Вчителі у яких сьогодні день народження
select surname, name, fname, datebd from Teachers
where to_char(datebd, 'DD.MM') = to_char(SYSDATE, 'DD.MM');

--6. Курси, які вчать англійську і французьку мову
select Courses.name, Languages.name, 
from Courses join Languages on Languages.id = Courses.id_language
where Languages.name in ('Англійська','Французька');

--7. Учні, у яких день народження цього місяця
select surname, name, fname, datebd from Students
where to_char(datebd, 'MM') = to_char(SYSDATE, 'MM');

--8 Учні, у яких ім'я починається на О та на Д
select surname, name, fname from Students
where name like 'О%' or name like 'Д%';

--9. Учні, які вчать англійську мову
select Students.surname, Students.name, Students.fname, Languages.name
from Students join Groups on Groups.id = Students.id_group
			join Courses on Courses.id = Groups.id_course
			join Languages on Languages.id = Courses.id_language
where Languages.name like 'Англійська%';