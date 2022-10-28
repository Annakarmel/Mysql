CREATE DATABASE sales;

CREATE TABLE sales_customer(customerId int, firstName varchar(30), lastName varchar(30), phone bigint, email varchar(40), street varchar(40), city varchar(30), state varchar(10));

SELECT * FROM sales_customer;

INSERT INTO sales_customer VALUES(1, 'Annakarmel', 'Bellary', 932587412, 'bellarya@mail.com', '9273 thome Ave', 'Orchard Park', 'NY');
INSERT INTO sales_customer VALUES(2, 'Pooja', 'Hosamani', 995225354, 'poojah@mail.com', '910 Vine Street', 'Campbell', 'CA');
INSERT INTO sales_customer VALUES(3, 'Shree', 'Keri', 875427412, 'shreek@mail.com', '769C Honey Creeek Street', 'Redondo Beach', 'CA');
INSERT INTO sales_customer VALUES(4, 'Muskan', 'Attar', 785495412, 'muskana@mail.com', '988 Pearl Lane', 'Uniondale', 'NY');
INSERT INTO sales_customer VALUES(5, 'Sneha', 'Lokhande', 932512574, 'snehal@mail.com', '107 River Dr.', 'Sacramento', 'CA');
INSERT INTO sales_customer VALUES(6, 'Sahana', 'Chittaragi', 912524572, 'sahanac@mail.com', '769 West Road', 'Fairport', 'NY');
INSERT INTO sales_customer VALUES(7, 'Mahananda', 'Bilagi', 932587412, 'bilagim@mail.com', '15 Brown St.', 'Buffalo', 'NY');
INSERT INTO sales_customer VALUES(8, 'Ashwini', 'Sulibhavi', 961485455, 'ashwinis@mail.com', '476 Chestnut Ave.', 'Monroe', 'NY');

SELECT * FROM sales_customer;

ALTER TABLE sales_customer ADD COLUMN zipCode bigint;

ALTER TABLE sales_customer DROP COLUMN zipCode;

ALTER TABLE sales_customer RENAME COLUMN customerId to id;

SELECT * FROM sales_customer;

RENAME TABLE sales_customer to sale;

ALTER TABLE sale MODIFY COLUMN id bigInt;
SELECT * FROM sale;

INSERT INTO sale VALUES(9, 'Sukanya', 'Narayankar', 845632115, 'sukanya@mail.com', '92 orchid', 'Amstron park', 'NY');
INSERT INTO sale(id, firstName) VALUES(2, 'Pooja');

desc sale;

ALTER TABLE sale ADD COLUMN place varchar(20) default 'India';
SELECT * FROM sale;


SELECT * FROM sale WHERE lastName = 'Hosamani';

SELECT email FROM sale where email = 'bellarya@mail.com';
SELECT id,email FROM sale where email = 'bellarya@mail.com';
SELECT city from sale where city = 'Campbell';

SELECT * FROM sale;

SELECT COUNT(*) FROM sale;
SELECT SUM(phone) FROM sale;
SELECT MAX(phone) FROM sale;
SELECT MIN(phone) FROM sale;
SELECT AVG(phone) FROM sale;

SELECT * FROM sale ORDER BY id;

SELECT * FROM sale WHERE firstName LIKE 'A%';
SELECT * FROM sale WHERE lastName LIKE 'B%';

SELECT firstName FROM sale WHERE firstName LIKE 'S%';
SELECT email FROM sale WHERE email LIKE 's%';

SELECT firstName FROM sale WHERE firstName LIKE '%a';

SELECT street FROM sale WHERE street LIKE '9%'; 

SELECT firstName FROM sale WHERE firstName LIKE '%a%';

SELECT firstName FROM sale WHERE firstName LIKE 'A%a%';

SELECT * FROM sale WHERE firstName BETWEEN 'A' AND 'S';

SELECT UPPER(firstName) FROM sale; 
SELECT LOWER(firstName) FROM sale; 

SELECT CONCAT(firstName,lastName) AS together FROM sale;
SELECT CONCAT(firstName,lastName,email,phone) AS together FROM sale;

SELECT INSTR('ANNAKARMEL','R') AS position;
SELECT INSTR('XWORKZODC','D') AS position;

SELECT SUBSTR('ANNAKARMEL',4,4) AS substring;
SELECT SUBSTR(firstName,4,4) FROM sale;

DELETE FROM movies WHERE id = 4; /* commit -> rollback -> delete -> select -> rollback -> select*/
COMMIT;
ROLLBACK;


