/* DML (Data Manipulation Language)
1. Insert
2. Update
3. Delete
*/
use sumit;

drop table empinfo;

create table empinfo
(
first varchar(20),
last varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
salary int,
primary key (id)
);

select * from empinfo;

insert into empinfo value("jhon","jones", 99980, 45,"payson", "arizona", 23000);
insert into empinfo value("mary","jones", 99982, 25,"payson", "arizona",35000);
insert into empinfo value("eric","edwards", 88232, 32,"san diego", "california",50000);
insert into empinfo value("mary ean","edwards", 88233, 21,"bangalore", "karnataka",20000);
insert into empinfo value("sumit","kumar", 99979, 30,"patna", "bihar",45000);
insert into empinfo value("sonu","kumar", 112, 59,"patna", "bihar",58000);
insert into empinfo value("amit","kumar", 113, 55,"patna", "bihar",51000);


select * from empinfo
where salary > 30000;

select first from empinfo
where age < 30;

select first, salary from empinfo
where state like '%bihar%';

select first, salary from empinfo
where last like '%ar';

/* Update query

update table_name
set columnname = '' 
where filter*/

select * from empinfo;
/*
set sql_safe_updates = 0;
*/
update empinfo
set salary = 75000
where id = 112;


update empinfo
set city = 'bangalore',
state = 'karnataka'
where id = 113;

select * from empinfo;


/* delete */

/*deleting all the records */
delete from empinfo;

/* deleting specific records based on conditions */
SET SQL_SAFE_UPDATES = 0;
delete from empinfo
where city = 'patna';

select * from empinfo;




























