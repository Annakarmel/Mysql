CREATE DATABASE t20Match;

CREATE TABLE WorldCup(id int not null, TeamName varchar(20) unique, Opponent varchar(20), Venue varchar(20), Captain varchar(20));
SELECT * FROM WorldCup;
INSERT INTO WorldCup VALUES(1, 'India', 'Australia', 'Sednay', 'Virat');
INSERT INTO WorldCup VALUES(2, 'Srilanka', 'England', 'Perth', 'Buttler');
INSERT INTO WorldCup VALUES(3, 'NewzeaLand', 'SouthAfrica', 'Melbourne', 'Williamson');
INSERT INTO WorldCup VALUES(1, 'India', 'Australia', 'Sednay', 'Virat');
INSERT INTO WorldCup VALUES(4, null, 'Australia', 'Sednay', 'Virat');
INSERT INTO WorldCup VALUES(5, 'South korea', 'Australia', 'Sednay', 'Virat');


desc WorldCup;

/* Olympics*/
CREATE TABLE olympics(id int not null, games_name varchar(20) unique, no_of_medals int unique, country varchar(20) unique, no_of_players int not null);
SELECT * FROM olympics;
INSERT INTO olympics VALUES(1, 'Basket ball', 5, 'Australia', 12);
INSERT INTO olympics VALUES(1, 'Basket ball', 5, 'Australia', 12);
INSERT INTO olympics VALUES(2, 'Foot ball', 4, 'India', 11);
INSERT INTO olympics VALUES(3, 'Badminton', 2, 'Rusia', 2);
INSERT INTO olympics VALUES(null, 'Basket ball', 6, 'Pakistan', 14);
INSERT INTO olympics VALUES(4, 'Hocky', null, 'Korea', 4);
INSERT INTO olympics VALUES(5, null, null, 'South Korea', 3);

desc olympics;

/*Serials*/
CREATE TABLE Serialss(id int not null unique, Serialname varchar(20) unique, Channels varchar(20), timings time, no_of_episodes int, check ( no_of_episodes>=1000));
SELECT * FROM Serialss;
INSERT INTO Serialss VALUES(1, 'Agnisakshi', 'colorsKannada', current_time(), 1036);
INSERT INTO Serialss VALUES(2, 'Kamali', 'Suvarna', current_time(), 1000);
INSERT INTO Serialss VALUES(3, 'RadhaKrishna', 'ZeeKannada', current_time(), 1000);
INSERT INTO Serialss VALUES(4, 'Nandini', 'UdayaTV', current_time(), null);

CREATE TABLE generalStores(id int primary key, Storename varchar(30) unique, items varchar(30) unique, price int not null, location varchar(30) unique);
SELECT * FROM generalStores;

INSERT INTO generalStores VALUES(1, 'Sahana store', 'Pearl soap', 17, 'Rajajinagar');
INSERT INTO generalStores VALUES(2, 'Sneha store', 'Snacks', 50, 'Gayatinagar');

CREATE TABLE saloons(id int, name varchar(30), address varchar(30), Stryle_type varchar(20), price int, primary key(id,price));
SELECT * FROM saloons;
INSERT INTO saloons VALUES(1, 'Muskan saloon', 'Mudhol', 'Baby cut', 200);
INSERT INTO saloons VALUES(2, 'Shreenidhi saloon', 'Jamkhandi', 'Step cut', 250);
INSERT INTO saloons VALUES(3, 'Poojasaloon', 'Bagalkot', 'Layer cut', 300);
INSERT INTO saloons VALUES(4, 'Snehasaloon', 'Ilkal', 'Straight cut', 300);


CREATE TABLE bank(b_id int primary key, b_name varchar(30) unique, location varchar(30), manager varchar(30));
SELECT * FROM bank;
INSERT INTO bank VALUES(101, 'HDFC', 'BTM', 'Dev');
INSERT INTO bank VALUES(102, 'SBI', 'Rajajinagar', 'Akshar');
INSERT INTO bank VALUES(103, 'Laxmi bank', 'Kalyanagar', 'Vinay');
INSERT INTO bank VALUES(104, 'IcIcI', 'Gayatri nagar', 'Lokesh');
INSERT INTO bank VALUES(105, 'Canara', 'Jpnagar', 'Sunil');
INSERT INTO bank VALUES(106, 'Syndicate', 'Whitefield', 'Omkar');

CREATE TABLE customer(id int not null, c_name varchar(20) unique, b_id int, acc_type varchar(30), foreign key(b_id) references bank(b_id));
SELECT * FROM customer;
INSERT INTO customer VALUES(1, 'Sahana', 101, 'Savings');
INSERT INTO customer VALUES(2, 'Muskan', 102, 'Current');
INSERT INTO customer VALUES(3, 'Sneha', 103, 'Savings');
INSERT INTO customer VALUES(4, 'Mahananda', 104, 'Current');
INSERT INTO customer VALUES(5, 'Vishala', 105, 'Savings');
INSERT INTO customer VALUES(1, 'Swati', 106, 'Savings');

drop table bank;

CREATE TABLE election(id int primary key auto_increment, name varchar(30), partyname varchar(30));
SELECT * FROM election;
INSERT INTO election (name,partyname)VALUES('Pooja', 'Prajakiya');
INSERT INTO election (name,partyname)VALUES('Shree', 'BJP');
INSERT INTO election (name,partyname)VALUES('Muskan', 'KRS');
INSERT INTO election (name,partyname)VALUES('Sahana', 'JDS');
INSERT INTO election (name,partyname)VALUES('Sneha', 'AAP');
INSERT INTO election (name,partyname)VALUES('Manu', 'TDP');
INSERT INTO election (name,partyname)VALUES('Vishala', 'BSP');
INSERT INTO election (name,partyname)VALUES('Swati', 'CPI');
INSERT INTO election (name,partyname)VALUES('     Anu', 'NCP');
INSERT INTO election (name,partyname)VALUES('Saru    ', 'INC');

ALTER TABLE election ADD UNIQUE name_uni(name);
desc election;

/* Syntax for adding not null constraint to existing column
ALTER TABLE table_name MODIFY COLUMN columnm_name datatype CONSTRAINT*/
ALTER TABLE election MODIFY COLUMN partyname varchar(60) not null;

SELECT * FROM election;
SELECT LENGTH(name) FROM election;
SELECT LTRIM(name) FROM election;
SELECT RTRIM(name) FROM election;

/*TASK: create 2 tables for primary n foreign with 10 columns applying constraints n with 2 LTRIM, RTRIM*/