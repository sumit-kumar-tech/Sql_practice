/* DDL (Data Definition Language)
1. create table
2. Alter table
3. Drop Table
*/

use sumit;
drop table employees;
/* creating table */
create table employees
(
firstname varchar(20),
lastname varchar(20),
title varchar(5),
age int,
salary int
);

show tables;

select * from employees;

/* Adding New column

 alter table command
alter table
tablename
add columnname datatype  */


alter table 
employees 
add id int;

/* Deleting column

 alter table command
alter table
tablename
drop columnname  */

alter table 
employees 
drop id;

/* Drop Table table name
it will delete the table

but delete table only delete data not deleting the table. */