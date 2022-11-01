CREATE DATABASE tasks;

CREATE TABLE Snacks(id int, b_name varchar(30) , size varchar(30), flavour varchar(30), price int, shop_name varchar(30), gst_no varchar(30), shape varchar(30), type varchar(30));

SELECT * FROM Snacks;

INSERT INTO Snacks VALUES(1, 'Parle-G', '250 g', 'mango', 20, 'Sneha', 'SM331', 'square', 'sweet');
INSERT INTO Snacks VALUES(2, 'Good day', '500 g', 'chocolate', 50, 'Mahananda', 'SM327', 'round', 'more sweet');
INSERT INTO Snacks VALUES(3, 'Marie gold', '450 g', 'wheet', 30, 'Swati', 'SM326', 'circle', 'sugarless');
INSERT INTO Snacks VALUES(4, '50-50', '500 g', 'apple', 20, 'Anu', 'SM327', 'rectangle', 'salty');
INSERT INTO Snacks VALUES(5, 'Crack jack', '250 g', 'cream', 50, 'Sahana', 'SM331', 'triangle', 'less sweet');
INSERT INTO Snacks VALUES(6, 'Burbon', '450 g', 'chocolate', 50, 'Muskan', 'SM333', 'square', 'creamy');
INSERT INTO Snacks VALUES(7, 'Monaco', '350 g', 'mango', 30, 'Swapna', 'SM332', 'circle', 'more salt');
INSERT INTO Snacks VALUES(8, 'Orio', '500 g', 'chocolate', 50, 'Aishu', 'SM331', 'triangle', 'more sweet');
INSERT INTO Snacks VALUES(9, 'Bounce', '200 g', 'cream', 20, 'Srushti', 'SM332', 'square', 'salty');
INSERT INTO Snacks VALUES(10, 'Gooogly', '250 g', 'pinapple', 30, 'Harsha', 'SM333', 'round', 'salt and sweet');

SELECT price, gst_no, count(price) from Snacks group by price;
SELECT price, gst_no, count(gst_no) as count from Snacks group by gst_no having gst_no = 'SM331';

SELECT price, size, sum(price) from Snacks group by size;
SELECT price, size, sum(price) as sum from Snacks group by size having price = 30;

SELECT type, price, max(price) from Snacks group by price;
SELECT type, price, max(price) from Snacks group by price having max(price) > 20;

SELECT size, price, min(price) from Snacks group by price;
SELECT size, price, min(price) from Snacks group by price having min(price) > 30;

SELECT type, price, avg(price) from Snacks group by price;
SELECT type, price, avg(price) from Snacks group by price having avg(price) > 20;

CREATE TABLE hairCutShop(id int, name varchar(30), address varchar(30), style_type varchar(30), price int, no_of_workers int);

INSERT INTO hairCutShop VALUES(1, 'Ravi', 'Bellary', 'normal', 150, 5);
INSERT INTO hairCutShop  VALUES(2, 'Harish', 'Banglore', 'Miltry', 500, 10);
INSERT INTO hairCutShop VALUES(3, 'Sanket', 'Hospete', 'alltypes', 3000, 5);
INSERT INTO hairCutShop VALUES(4, 'Ravi', 'Bellary', 'normal', 150, 5);
INSERT INTO hairCutShop VALUES(5, 'Harish', 'Baglkot', 'Googly', 150, 10);
INSERT INTO hairCutShop VALUES(6, 'Sanket', 'Banglore', 'Miltry', 500, 15);

SELECT * FROM hairCutShop;

SELECT price, no_of_workers, count(no_of_workers) from hairCutShop group by no_of_workers;
SELECT price, no_of_workers, count(no_of_workers) as count from hairCutShop group by no_of_workers having no_of_workers = 5;

SELECT style_type, price, sum(price) from hairCutShop group by price;
SELECT name, price, sum(price) as sum from hairCutShop group by price having price = 150;

SELECT address, no_of_workers, max(no_of_workers) from hairCutShop group by no_of_workers;
SELECT address, no_of_workers, max(no_of_workers) as max from hairCutShop group by no_of_workers having max(no_of_workers) > 5;

SELECT name, price, min(price) from hairCutShop group by price;
SELECT name, price, min(price) as min from hairCutShop group by price having min(price) > 100;

SELECT name, price, avg(price) from hairCutShop group by price;
SELECT name, price, avg(price) as avg from hairCutShop group by price having avg(price) > 150;

CREATE TABLE Series(id int, name varchar(30), channels varchar(20),  no_of_episodes int,  ratings int);
SELECT * FROM Series;

INSERT INTO Series VALUES(1, 'Agnisakshi', 'colorskannad', 1036, 5);
INSERT INTO Series VALUES(2, 'Kamali', 'zeekannad', 1000, 6); 
INSERT INTO Series VALUES(3, 'Jote joteyali', 'Uday tv', 1050, 5);
INSERT INTO Series VALUES(4, 'Geeta', 'suvarna', 1036, 6);
INSERT INTO Series VALUES(5, 'Kendsampige', 'colorskannad', 1000, 6);

SELECT name, no_of_episodes, count(no_of_episodes) from Series group by no_of_episodes;
SELECT name, no_of_episodes, count(no_of_episodes) as count from Series group by no_of_episodes having no_of_episodes = 1036;

SELECT channels, ratings, sum(ratings) from Series group by ratings;
SELECT channels, ratings, sum(ratings) as sum from Series group by channels having ratings >= 5;

SELECT name, no_of_episodes, max(no_of_episodes) from Series group by no_of_episodes;
SELECT name, no_of_episodes, max(no_of_episodes) as max from Series group by no_of_episodes having max(no_of_episodes) > 6;

SELECT channels, ratings, min(ratings) from Series group by ratings;
SELECT channels, ratings, min(ratings) as min from Series group by ratings having min(ratings) = 5;

SELECT name, no_of_episodes, avg(no_of_episodes) from Series group by no_of_episodes;
SELECT name, no_of_episodes, avg(no_of_episodes) as avg from Series group by no_of_episodes having avg(no_of_episodes) > 1000;

CREATE TABLE Games(id int, games_name varchar(30), no_of_medals int, country varchar(30), no_of_players int);

SELECT * FROM Games;

INSERT INTO Games VALUES(1,'hockey', 2, 'India', 6);
INSERT INTO Games VALUES(2, 'Kabbaddi', 4, 'India', 9);
INSERT INTO Games VALUES(3, 'Vollyball', 3, 'America', 7);
INSERT INTO Games VALUES(4, 'hockey', 2, 'Japan', 6);
INSERT INTO Games VALUES(5, 'Running', 3, 'German', 9);
INSERT INTO Games VALUES(6, 'Football', 4, 'Spane', 7);

SELECT games_name, no_of_players, count(no_of_players) from Games group by no_of_players;
SELECT games_name, no_of_players, count(no_of_players) as min from Games group by no_of_players having no_of_players;

SELECT games_name, no_of_medals, sum(no_of_medals) from Games group by no_of_medals;
SELECT games_name, no_of_medals, sum(no_of_medals) as sum from Games group by games_name having no_of_medals = 2;

SELECT country, no_of_medals, max(no_of_medals) from Games group by no_of_medals;
SELECT country, no_of_medals, max(no_of_medals) as max from Games group by no_of_medals having max(no_of_medals) > 6;

SELECT games_name, no_of_players, min(no_of_players) from Games group by no_of_players;
SELECT games_name, no_of_players, min(no_of_players) as min from Games group by no_of_players having min(no_of_players) > 2;

SELECT games_name, no_of_players, avg(no_of_players) from Games group by no_of_players;
SELECT games_name, no_of_players, avg(no_of_players) as min from Games group by no_of_players having avg(no_of_players) > 2;
