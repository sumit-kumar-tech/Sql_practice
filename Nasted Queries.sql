/* Nasted quaries or sub quaries

In sub quaries first inner quarie run first than oter quarie run
 */

use sumit;

/* Find the list of customers whose salary is greater than avg salary */

select * from empinfo;

select * from empinfocustomers
where salary > (select avg(salary) from empinfo);

/* Find the total count of customers where salary > salary of '99982' */

select * from empinfo
where salary > (select salary from empinfo where id = '99982');

/* Find the second higest salary of a person */

select * from empinfo
where salary = (select max(salary) as total from empinfo where salary <> (select max(salary) from empinfo));