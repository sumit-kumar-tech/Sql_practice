/* Window function 

A window function in mysql used to do a calculation across a set of rows that are related to current row.
The current row is that row for which function evaluation occurs.
Window functions perform a calculation similar to a calculation done by using the aggregate functions.alter

Windows functions applies aggregate and ranking functions over a particular window (set of rows).
Over clause is used with window functions to define that window.

Over clause does two things :
1. Partition rows into form set of rows. (PARTITION BY clause is used)
2. Orders row within those partations into a particular order. (order by clause is used)

Row_num() --> Gives a sequential integer to every row within its partation
Rank() functions -> Ranking records
First_value() function -> Return the value of the specific expression with respect to first row in the window frame.
*/

use classicmodels;
show tables;

select * from products;


create table productlinemsrp as
select sum(msrp), productline from products 
group by productLine;

select * from productlinemsrp;

/* Windows fun from here */

select a.productLine, a.*, sum(msrp) 
over (partition by a.productline) as total_msrp from products a;

select row_number() over (order by productline) as row_num, productline from products order by productline; 


