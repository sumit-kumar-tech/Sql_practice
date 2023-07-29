/* creating table assigning primary key, foreign key, creating database, dropping table and database */ 

create database sumit;
use sumit;
drop table students;

create table students
(
student_id int,
student_name varchar(50),
age int,
gender varchar(1),
location varchar(100)
);

select * from students;

insert into students values(1,"sumit", 31, "M","Bangalore");

insert into students values(1,"sanya", 26, "F","Bangalore");


create table dep
(
depid int not null,
depname varchar(25),
depadd varchar(100),
primary key(depid)
);


create table emp
(
depid int,
empname varchar(25),
empid varchar(100),
depadd varchar(100),
primary key(depid),
foreign key (depid) references dep(depid)
);

select * from emp;

select * from dep;