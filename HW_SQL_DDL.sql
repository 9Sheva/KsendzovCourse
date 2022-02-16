# Ниже представлено выполненное задание по работе с SQL с помощью Postgres
--Ñîçäàòü òàáëèöó employees


create table employees(
id serial primary key,
employee_name Varchar(50) not null
)

--Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.

insert into employees(id, employee_name)
values (70, 'Illya');

--Ñîçäàòü òàáëèöó salary

create table salary (
 id serial  primary key,
 monthly_salary Int not null
)

--Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:

insert into salary (id,monthly_salary)
values(15,2400)

--Ñîçäàòü òàáëèöó employee_salary

create table employee_salary(
id serial  primary key,
employee_id Int not null unique,
salary_id Int not null
)

--Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
-- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id:

insert into employee_salary(id, employee_id, salary_id)
values (40,81,6)

--Ñîçäàòü òàáëèöó roles_2

create table roles_2(
id Serial  primary key,
role_name int not null unique
)

--Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)

alter table roles_2
alter column role_name type varchar(30)

--Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè:

insert into roles_2(id,role_name)
values (20,'Senior Automation QA engineer')

--Ñîçäàòü òàáëèöó roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
--role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)


create table roles_employee_1(
id Serial  primary key,
employee_id Int not null unique, 
role_id Int not null, 
foreign key (employee_id) 
	references employees (id),
foreign key (role_id)
	references roles_2(id)
	);

--Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:

insert into roles_employee_1 (employee_id, role_id)
values (1,1),
		(2,2),
		(3,3),
		(4,1),
		(5,3),
		(6,2),
		(7,10),
		(8,1),
		(9,13),
		(10,11),
		(11,1),
		(12,2),
		(13,4),
		(14,10),
		(15,8),
		(16,1),
		(17,5),
		(18,14),
		(19,2),
		(20,3),
		(21,5),
		(22,7),
		(23,8),
		(24,7),
		(25,2),
		(26,8),
		(27,11),
		(28,9),
		(29,5),
		(30,2),
		(31,4),
		(32,1),
		(33,6),
		(34,5),
		(35,6),
		(36,7),
		(37,6),
		(38,9),
		(39,2),
		(40,1);
	
	select* from roles_employee_1
