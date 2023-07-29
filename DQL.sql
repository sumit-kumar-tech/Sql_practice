/*DQL(Data Query Language)
Select

DQL statement is used to performing queries onn the data within sehema object. The purpose of DQL command is to get some schema relation
based on the query passed to it
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
primary key (id)
);

select * from empinfo;

insert into empinfo value("jhon","jones", 99980, 45,"payson", "arizona");
insert into empinfo value("mary","jones", 99982, 25,"payson", "arizona");
insert into empinfo value("eric","edwards", 88232, 32,"san diego", "california");
insert into empinfo value("mary ean","edwards", 88233, 21,"bangalore", "karnataka");
insert into empinfo value("sumit","kumar", 99979, 30,"patna", "bihar");
insert into empinfo value("sonu","kumar", 112, 59,"patna", "bihar");
insert into empinfo value("amit","kumar", 113, 55,"patna", "bihar");

select count(*) from empinfo;

select count(id) from empinfo;

select count(id) as record_count from empinfo;

select first, last from empinfo;

select first as first_name, last as last_name, city from empinfo;

/* Filtering records */

/* Employees whose age is greater then 30 */

select * from empinfo
where age > 30;

/* Employees whose age is greater then 30 and less then 50*/


select * from empinfo
where age > 30 and age < 50;

/* emp name starts with e */

select * from empinfo
where first like 'e%';

/* emp name ends with t */

select * from empinfo
where first like '%t';

/* Employees whose age is eithr (30, 59) */

select * from empinfo
where age = 30 or age = 59;

/* or */
select * from empinfo
where age in (30,59);

/* list emp city has "t" in it */

select * from empinfo
where city like '%t%';










