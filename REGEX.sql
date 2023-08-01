/* REGEX -- Regular Expression*/

/* Match beginning of the game */

use classicmodels;

show tables;

select * from customers;

/* Select customersname whose name start with 'B' */

/* with like */
select * from customers
where customername like 'b%'; 

/* with regex */
select * from customers
where customername regexp '^b'; 

/* select contactfirstname where alphabet v w x */

select * from customers
where contactfirstname like '%v%' 
or contactfirstname like '%w%' 
or contactfirstname like '%x%'; 

/* Or */

select * from customers
where contactfirstname regexp '[vwx]';

/* List of customer where name range v-z */

select * from customers
where contactfirstname regexp '[v-z]';

