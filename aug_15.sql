/*sql: Structured query language
database: organised collection of tables

functions: fetch
		   insert
		   update 
		   delete
           
DDL statements: (DATA DEFINITION LANGUAGE): These are used to create and manage the structure of database.
				1. CREATE : Used to create the database and table.
				2. ALTER : a)Used to add new column to existing table.
						   b)To rename the column from table.
						   c)To drop the column from table.
						   d)To modify the column datatype.
				3. DROP : To drop the table from database.
				4. TURNCATE : To turncate the data from table.
				
==> Syntax for craeting the database
		# CREATE DATABASE database_name; --> CREATE DATABASE hospital;
		# To run the sql command -> cntl+shipt+enter
		# To see the schemas -> click on schemes then on left side click on refresh button.
		
==> Syntax for craeting the table
		# CREATE TABLE table_name(Column_name1 datatype,column_name2 datatype,column_name3 datatype);
		--> CREATE TABLE hospital_info(id int, hospital_name varchar(50), location varchar(20), type varchar(20));

==> Syntax for fetching the data from tabel
		# SELECT * FROM table_name; --> SELECT * FROM hospital_info;
		# or fetch only the selected part --> SELECT hospital_name,location FROM hospital_info;

==> Syntax for inserting the data into table
		# INSERT INTO table_name VALUES(data1,data2,data3) --> INSERT INTO hospital_info VALUES(1,'Jaydeva','btm','nat');
        # INSERT INTO hospital_info VALUES(1,'Jaydeva','btm','nat');
		# INSERT INTO hospital_info(id,location) VALUES(2,'Rajajinagar');
		# SELECT * FROM hospital_info;*/
        
CREATE DATABASE aug_15;

CREATE TABLE ipl_teams(id int, team_name varchar(50), venue varchar(20), opposition varchar(30), matchdays varchar(20));

SELECT * FROM ipl_teams;
SELECT id, venue FROM ipl_teams;

INSERT INTO ipl_teams VALUES(1, 'MI', 'Banglore', 'RCB', 'Saturday');
INSERT INTO ipl_teams VALUES(2, 'RCB', 'Chennai', 'CSK', 'Sunday');
INSERT INTO ipl_teams(id, venue) VALUES(2, 'Chennai');

SELECT * FROM ipl_teams;

/*Syntax for adding new column to existing table
ALTER TABLE table_name ADD COLUMN column_name datatype*/
ALTER TABLE ipl_teams ADD COLUMN no_of_players int;

/*Syntax for drop column from existing table
ALTER TABLE table_name DROP COLUMN column_name;*/
ALTER TABLE ipl_teams DROP COLUMN no_of_players;

/*Syntax for renameing the column name
ALTER TABLE table_name RENAME COLUMN old_column_name*/
ALTER TABLE ipl_teams RENAME COLUMN id to slno;

SELECT * FROM ipl;

/*Syntax for renaming the tble name
RENAME TABLE oldtable to newtable;*/
RENAME TABLE ipl_teams to ipl;

/*Syntax for changing the datatype for existing column
ALTER TABLE table_name MODIFY COLUMN column_name;*/
ALTER TABLE ipl MODIFY COLUMN slno bigint;

INSERT INTO ipl VALUES(1, 'MI', 'Banglore', 'RCB', 'Saturday');
INSERT INTO ipl VALUES(2, 'RCB', 'Chennai', 'CSK', 'Sunday');
INSERT INTO ipl(id, venue) VALUES(2, 'Chennai');

desc ipl;

ALTER TABLE ipl ADD COLUMN place varchar(20) default 'India';
SELECT * FROM ipl;

/*WHERE : Cndition used to filter the data from the table based on the condition
/* Syntax for WHERE 
SELECT * FROM table_name WHERE condition*/
SELECT * FROM ipl WHERE slno = 1;

SELECT opposition FROM ipl where opposition = 'RCB';
SELECT slno,opposition FROM ipl where opposition = 'RCB';
SELECT venue from ipl where venue = 'Banglore';
