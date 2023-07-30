/* Aggragation functions
1. groupby()
2. count()
3.min(), max()
4. avg()
*/

show tables;

select * from titanic;

/* Group by */

select sex,count(*) from titanic
group by sex;

select embarked,count(*) from titanic
group by embarked;

select sex embarked,count(*) from titanic
group by embarked,sex;

/*count */

select count(*) from titanic;


select count(*) from titanic where sex='male';

/* Sum */
select sum(fare) from titanic;

select round(sum(fare),2) from titanic;

/* min max avg */

select min(fare) from titanic;

select max(fare) from titanic;

select avg(fare) from titanic;