/* JOIN

1. self join
2. right join
3. full join
4. inner join
5. cross join
6. left join

*/

create database joins;

use joins;

/* Right join

select a.first, a.last,
b.proj_name
from empinfo a 
right join project b
on a.id = b.id;
*/
drop table customers;

create table customers
(
customerid int not null auto_increment,
customername varchar(20),
contactname varchar(20),
address varchar(20),
city varchar(20),
postalcode varchar(20),
country varchar(20),
primary key (customerid)
);

insert into customers values(1, 'sumit', 'sanya', 'patna', 'bihar','800021','india');
insert into customers values (2, 'amit', 'divya', 'patna', 'bihar','800021','india');
insert into customers values (3, 'sonu', 'sadhna', 'bangalore', 'bihar','560068','india');
insert into customers values (4, 'ramesh', 'suresh', 'patna', 'bihar','800021','india');
insert into customers values (5, 'rupesh', 'kamina', 'bangalore', 'bihar','800021','india');
insert into customers values (6, 'arun', 'arohore', 'patna', 'bihar','800021','india');
insert into customers values (7, 'gaurav', 'puja', 'bangalore', 'bihar','800021','india');
insert into customers values (8, 'abhinav', 'thakur', 'patna', 'bihar','800021','india');
insert into customers values (9, 'abhinav', 'bhodoni', 'banaras', 'bihar','800021','india');
insert into customers values (10, 'salani', 'madam', 'bangalore', 'bihar','800021','india');

select * from customers;


drop table orders;


create table orders
(
OrderID int auto_increment,
CustomerID int,
EmployeeID int,
OrderDate datetime,
ShippedID int,
primary key (OrderID)
);

insert into orders values(901,1,1,sysdate(),92801);
insert into orders values(902,4,4,sysdate()-10,92802);
insert into orders values(903,5,5,sysdate()-12,92803);
insert into orders values(904,6,6,sysdate()-15,92804);
insert into orders values(905,7,7,sysdate()-17,92805);
insert into orders values(906,11,7,sysdate()-17,92805);

select * from orders;

/*1.  Left outer join  */

select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
left join orders o
on c.customerid = o.CustomerID;

/* Right Join */
select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
right join orders o
on c.customerid = o.CustomerID;


/* inner Join */
select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
inner join orders o
on c.customerid = o.CustomerID;


/* full or outer Join  important in mysql workbench full join or outer join not work
so for that we do left outer join and right outer join and do union*/

/*select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
full join orders o
on c.customerid = o.CustomerID; */

select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
left outer join orders o
on c.customerid = o.CustomerID
union
select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
right outer join orders o
on c.customerid = o.CustomerID;

/* cross join */

select c.customerid,c.customername, c.country,o.customerid, o.orderdate, o.orderid from
customers c
cross join orders o
on c.customerid = o.CustomerID;


