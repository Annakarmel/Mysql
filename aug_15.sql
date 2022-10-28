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



