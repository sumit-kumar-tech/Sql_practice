/* String functions
1. concat
2. substr/substring
3. upper
4. lower
5. character_length
6. mid
 */
 
use classicmodels;

select * from customers; 

select contactfirstname, contactlastname from customers;

/* concat */
select concat('Hello','world');

select concat('Hello',' ','world');

select concat(contactfirstname,' ',contactlastname) from customers;

/* Trim  remove the unwanted spaces*/ 
select concat(trim(contactfirstname),' ',trim(contactlastname)) from customers;  

select trim(contactfirstname) from customers;

/* substr */

select substr("sql tutorial", 5) as extract_string;

/* upper and lower */

select contactfirstname,upper(contactfirstname), lower(contactfirstname) from customers; 

/* character_len */

select contactfirstname, character_length(contactfirstname) from customers;

select contactfirstname, character_length(trim(contactfirstname)), character_length(contactfirstname) from customers;

/* mid 

mud and substr function is same
*/
select mid(contactfirstname,3,5) from customers;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 