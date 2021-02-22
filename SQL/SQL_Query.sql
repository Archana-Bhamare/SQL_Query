##CREATE TABLE
create table department(
	dept_id serial primary key,
	dept_name varchar(20)not null,
)

##INSERT VALUES
insert into department
(dept_id, dept_name) values
	(1001,'Computer'),
	(1002,'Mechanical'),
	(1003,'Electrical'),
	(1004,'Civil');

##ALTER
alter table department add column dept_floor varchar(20)        '#Add column
alter table department drop column dept_floor                   '#Drop a column
alter table department alter column dept_id type numeric(10)    '#modify column type
alter table department rename column dept_id to id;             '#rename column name
alter table department rename to Departments                    '#rename table name

##TRUNCATE TABLE
Truncate table department

##DROP TABLE
drop table department

##UPDATE TABLE
update department set dept_name = 'E&TC' where dept_id=1003

##DELETE
delete from department where dept_id=1003

##OPERATORS
#Relational operators
select * from department where dept_id=1001
select * from employee where salary>=5000

#Logical operators
select * from employee where ename NOT LIKE 'Archana'
select * from employee where ename='Archana' AND salary = 2000
select * from employee  where ename='Archana' OR salary <= 2000

#Special operators
select * from employee where salary BETWEEN 2100 AND 300
select eid, ename, salary+5000 from employee where ename='Archana'
select * from employee where job IN('Marketing')
select * from employee where job IS NULL

##WildCards
select * from student where stud_name like 'Arch%'
select * from student where stud_name like 'A%a'
select * from student where stud_name like '%a'
select * from student where stud_name like '%ch%'
select * from student where stud_name like 'A_%_%_%'
select * from student where stud_name like 'A_h'

##SET OPERATORS
#UNION
select * from first_table union select * from second_table

#UNION ALL
select * from first_table union all select * from second_table

#INTERSECT
select * from first_table intersect select * from second_table

#MINUS
select * from first_table minus select * from second_table

##JOIN
#LEFT JOIN
select stud_name, stud_marks, dept_name from student left join department on
student.dept_id = department.dept_id

#RIGHT JOIN
select stud_name, stud_marks, dept_name from student right join department on
student.dept_id = department.dept_id

#INNER JOIN
select stud_name, stud_marks, dept_name from student inner join department on
student.dept_id = department.dept_id

#FULL OUTER JOIN
select stud_name, stud_marks, dept_name from student full outer join department on
student.dept_id = department.dept_id

#SELF JOIN
select A.stud_name AS stud_name1, B.stud_name AS stud_name2, A.city
from student A, student B where A.stud_id <> B.stud_id and
A.city = B.city order by A.city

#CROSS JOIN
select stud_name, dept_name from student cross join department

##SQL CLAUSES
#GROUP BY
select dept_id, count(*) from department GROUP BY dept_id

#HAVING
select dept_id, sum(salary) as "Total Salary" from employee GROUP BY dept_id HAVING sum(salary) > 3000

#ORDER BY
select * from employee ORDER BY dept_id DESC
select * from employee ORDER BY dept_id ASC

#WHERE
select * from employee WHERE ename='Archana'

##AGGREGATE FUNCTIONS
#SUM
select SUM(salary) as "Total Salary" from employee
select SUM(DISTINCT salary) as "Total Salary" from employee

#AVG
select AVG(salary) as "Average Salary" from employee
select AVG(DISTINCT salary) as "Average Salary" from employee

#COUNT
select COUNT(*) from employee
select COUNT(salary) from employee
select COUNT(DISTINCT salary) from employee

#MAX
select MAX(salary) as "Maximum Salary" from employee

#MIN
select MIN(salary) as "Minimum Salary" from employee


##STRING FUNCTIONS
SELECT ascii('A');
select ASCII(stud_name) from student
SELECT CHAR_LENGTH('Archana');
SELECT CONCAT('Arch', 'esh');
