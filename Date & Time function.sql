/* Date & Time 
1. datediff
2. date_format
3. day
4. quarter
5. adddate & subdate
*/
use classicmodels;

select * from orders;

/* datediff */

select ordernumber,datediff(shippeddate,orderdate), orderdate, shippeddate from orders;

/* date_format */

select date_format(orderdate, '%Y'), orderdate from orders;   /* for finding year */
select Year(orderdate), orderdate from orders;   /* for finding year */

select date_format(orderdate, '%M'), orderdate from orders;   /* for finding month */
select month(orderdate), orderdate from orders;   /* for finding month */

select date_format(orderdate, '%D'), orderdate from orders;   /* for finding date */
select day(orderdate), orderdate from orders;   /* for finding date */

/* quarter */

select quarter(orderdate), orderdate from orders;   /* for finding date */


/* for adddate subdate */

select adddate(sysdate(), interval 30 day);
select adddate(sysdate(), interval 30 month);
select adddate(sysdate(), interval 30 year);
select adddate(sysdate(), interval 30 quarter);

select adddate(sysdate(), interval 2 day);

select subdate(sysdate(), interval 2 day);