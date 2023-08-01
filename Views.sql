/* Stored procedured */
use classicmodels;

select * from customers;

select * from customers
where salesRepEmployeeNumber > 1504;

delimiter &&
create procedure top()
begin
select * from customers where salesRepEmployeeNumber > 1504;
end &&

/* Calling function we have created */
call top();



/* Stored procedure using in and out */

/* Questions: Lets create a procedure which return the top customername based on creditlimit */

delimiter &&
create procedure top_name(In n int )
begin
select * from customers 
order by creditlimit desc limit n;
end &&

call top_name(5);









