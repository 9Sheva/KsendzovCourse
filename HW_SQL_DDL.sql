--������� ������� employees


create table employees(
id serial primary key,
employee_name Varchar(50) not null
)

--��������� ������� employee 70 ��������.

insert into employees(id, employee_name)
values (70, 'Illya');

--������� ������� salary

create table salary (
 id serial  primary key,
 monthly_salary Int not null
)

--��������� ������� salary 15 ��������:

insert into salary (id,monthly_salary)
values(15,2400)

--������� ������� employee_salary

create table employee_salary(
id serial  primary key,
employee_id Int not null unique,
salary_id Int not null
)

--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id:

insert into employee_salary(id, employee_id, salary_id)
values (40,81,6)

--������� ������� roles_2

create table roles_2(
id Serial  primary key,
role_name int not null unique
)

--�������� ��� ������ role_name � int �� varchar(30)

alter table roles_2
alter column role_name type varchar(30)

--��������� ������� roles 20 ��������:

insert into roles_2(id,role_name)
values (20,'Senior Automation QA engineer')

--������� ������� roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--role_id. Int, not null (������� ���� ��� ������� roles, ���� id)


create table roles_employee_1(
id Serial  primary key,
employee_id Int not null unique, 
role_id Int not null, 
foreign key (employee_id) 
	references employees (id),
foreign key (role_id)
	references roles_2(id)
	);

--��������� ������� roles_employee 40 ��������:

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
