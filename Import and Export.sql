/* Import data from external by command line
cd /usr/local/mysql/bin  
 ./mysql -u root -p 
 exit
 ./mysql --local-infile=1 -u root -p
 yuupiiii connected to sql



mysql> load data local infile '//Users//sumitkumar//Desktop//Statistics-With-Python-TheCompleteGuide-main//Titanic.csv' 
into table titanic 
fields terminated by ',' 
enclosed by '"'  
lines terminated by '\r\n';

------------------------------------------------------------------------------

through manually

1. select the database
2. right click on Tables
3. select the csv file location
4. next
5. check the data types
done
*/

select * from titanic;


/* Export data
1. go to the server 
2. select data export
3. give the path/foldetname
4. select start export
the exported data is in the form of sql format
!!!!!!

----------------------
if you want specific data from the table then
1. run the query based on condition
2. In output result there is an option called export click on that
3. select path and format click on ok
done!!!!!!
*/


/* Importing databse
1. go to the server 
2. select data import
3. give the path
4. select start import
done!!!!!!
*/

