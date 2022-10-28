CREATE TABLE movies(id int, name varchar(50), ticket_price int, location varchar(50), hero varchar(50), budget bigint);
SELECT * FROM movies;
INSERT INTO movies VALUES(1,'Kantara',200,'Navarang','Risheb Shetty',500);
INSERT INTO movies VALUES(2,'KGF',300,'PVR','Yash',1000);
INSERT INTO movies VALUES(3,'Charlie777',250,'Orion mall','Rakshit Shetty',600);
INSERT INTO movies VALUES(4,'Mungaru male',350,'Vinayaka','Ganesh',700);

ALTER TABLE movies ADD COLUMN director varchar(40) default 'Annkarmel';


UPDATE movies SET director = 'Shree' WHERE id = 2;
SELECT * FROM movies;

UPDATE movies SET director = 'Pooja' WHERE id = 3;
UPDATE movies SET location = 'BTM' WHERE name = 'Kantara'; /* only one condition*/

UPDATE movies SET location = 'Kormangala', budget = 1020 WHERE id = 4;
UPDATE movies SET hero = 'Yash', name = 'KGF2' WHERE id = 2;
UPDATE movies SET name = 'Yuvaratna', ticket_price = 500, hero = 'Puneet' WHERE id = 2;


SELECT * FROM movies WHERE director = 'Annkarmel' AND id = 4;

SELECT * FROM movies WHERE director = 'Annkarmel' OR id = 1;
SELECT * FROM  movies WHERE id = 1 OR  id = 2 OR id = 4;

SELECT * FROM movies WHERE id in(1,2);
SELECT * FROM movies WHERE id not in(1,2);

SELECT * FROM movies ORDER BY id desc;

SELECT COUNT(*) AS no_of_rows FROM movies;

CREATE TABLE movies(id int, name varchar(50), ticket_price int, location varchar(50), hero varchar(50), budget bigint);
SELECT * FROM movies;
INSERT INTO movies VALUES(1,'Kantara',200,'Navarang','Risheb Shetty',500);
INSERT INTO movies VALUES(2,'KGF',300,'PVR','Yash',1000);
INSERT INTO movies VALUES(3,'Charlie777',250,'Orion mall','Rakshit Shetty',600);
INSERT INTO movies VALUES(4,'Mungaru male',350,'Vinayaka','Ganesh',700);

ALTER TABLE movies ADD COLUMN director varchar(40) default 'Annkarmel';

/*DML:
Syntax for update
UPDATE table_name SET column_name = 'value' WHERE condition;*/
UPDATE movies SET director = 'Shree' WHERE id = 2;
SELECT * FROM movies;

SELECT * FROM movies;
SELECT * FROM movies WHERE director = 'Annkarmel' AND id = 30;
SELECT * FROM movies WHERE director = 'Annkarmel' OR id = 10;
SELECT count(*) AS no_of_records FROM movies;



