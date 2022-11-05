CREATE DATABASE wealthgames;

CREATE TABLE commonWealthGames(id int primary key, game_name varchar(30) not null unique ,no_of_players varchar(30) not null unique, check(no_of_players >10),
country_participated varchar(30) not null unique, no_of_medals int not null unique, captain_name varchar(30) not null unique,
penalty_points int not null unique, bonus_points int not null unique, sponser varchar(30) not null unique,
venue varchar(30) not null unique, team_rank int not null unique, team_total_points int not null unique,
player_ranking int not null unique, winner_team varchar(30) not null unique, runners_team varchar(30) not null unique,
semi_final_team varchar(30) not null unique, refree_name varchar(30) not null unique, host_country varchar(30) not null unique,
qualifier_team_winner varchar(30) not null unique, qualifier_team_runner varchar(30) not null unique, game_type varchar(30) not null);

INSERT INTO commonWealthGames VALUES(1, 'Football', 12, 'Africa', 50, 'Ronwen williams', 8, 6, 'fan', 'Africa', 3, 12, 12, 'Africa', 'India', 'India','Albert', 'Africa', 'Team Africa', 'Africa', 'National');
INSERT INTO commonWealthGames VALUES(2, 'Kabbaddi', 13, 'Bengalur bulls', 55, 'Pavan', 11, 7, 'vimal', 'Delhi', 2, 9, 13, 'Bengalur bulls', 'Tamil talivas', 'Benagur bulls','Ranveer sharma', 'Brezil', 'Bengalur bulls', 'Tamil talivas', 'International');
INSERT INTO commonWealthGames VALUES(3, 'Badminton', 14, 'Cheena', 40, 'sea-woon', 6, 2, 'oppo', 'Shangai', 4, 18, 11, 'Shehanzai', 'Afghanistan', 'Afghanistan','Rehan ali', 'France', 'team Afghastian', 'Cheena', 'National');
INSERT INTO commonWealthGames VALUES(4, 'Lawn Bowls', 16, 'Australia', 56, 'Zukeburg', 10, 10, 'redbull', 'machado', 6, 15, 20, 'Australia', 'Cheena', 'Cheena','Xiao un', 'Cheena', 'team Cheena', 'Mexican', 'National');
INSERT INTO commonWealthGames VALUES(5, 'Rugby 7s', 18, 'Afghanistan', 96, 'Mahammad', 13, 13, 'redmi', 'Zohail', 8, 6, 5, 'Afghanistan', 'Nizeria', 'Nizeria','Sehena', 'Paris', 'team Nizeria', 'Afghanistan', 'International');
INSERT INTO commonWealthGames VALUES(6, 'Hockey', 19, 'Maleshia', 63, 'Rehan', 12, 14, 'cococola', 'Levana', 9, 5, 15, 'Maleshia', 'West-indies', 'West-indies','Crister', 'Jermany', 'team west-indies', 'West-indies', 'National');
INSERT INTO commonWealthGames VALUES(7, 'Weightlifting', 20, 'Nizeria', 32, 'Vicenzo', 16, 12, 'Scotch', 'leggo', 10, 4, 16, 'Nizeria', 'south-indies', 'south-indies','libour', 'Finland', 'team South-indies', 'South-indies', 'International');
INSERT INTO commonWealthGames VALUES(8, 'Squash', 21, 'West-Indies', 47, 'Krona', 19, 4, 'king fisher', 'Stadan', 11, 3, 17, 'West-indies', 'England', 'England','Ghockberk', 'Italy', 'team England', 'England', 'International');
INSERT INTO commonWealthGames VALUES(9, 'Basketball', 23, 'South-Africa', 23, 'Yanosh', 18, 18, 'lenovo', 'Swtart', 13, 29, 29, 'South-africa', 'USA', 'USA','Cris', 'Greece', 'team USA', 'USA', 'International');
INSERT INTO commonWealthGames VALUES(10, 'Shooting-Pistol', 24, 'NewzeeLand', 75, 'Peter', 29, 17, 'Hp', 'giddo', 14, 16, 27, 'Newzeeland', 'Japan', 'Japan','Asley', 'UK', 'team France', 'France', 'International');
INSERT INTO commonWealthGames VALUES(11, 'Canoeing', 25, 'England', 39, 'Harris', 26, 21, 'Loreal', 'Sannalia', 15, 13, 21, 'England', 'France', 'France','Henry', 'Holand', 'team Holand ', 'Korea', 'National');
INSERT INTO commonWealthGames VALUES(12, 'Cricket', 11, 'India', 45, 'virat_kohli', 9, 5, 'vivo', 'Banglore', 1, 8, 10, 'India', 'Australia', 'Australia','Sukha bose', 'India', 'team India', 'Australia', 'International');
INSERT INTO commonWealthGames VALUES(13, 'Boxing ', 15, 'America', 48, 'Robert', 7, 9, 'renold', 'St.jhons street', 5, 17, 19, 'America', 'Newzeeland', 'Newzeeland','Syed khan', 'Japan', 'team Newzeeland', 'America', 'International');
INSERT INTO commonWealthGames VALUES(14, 'Netball ', 17, 'Pakistan', 85, 'Alladdin', 3, 11, 'stag', 'Alistan', 7, 14, 14, 'Pakistan', 'South-korea', 'Pakistan','Muskan', 'Turki', 'team Pakistan', 'Pakistan', 'International');
INSERT INTO commonWealthGames VALUES(15, 'Swimming', 22, 'South-Korea', 95, 'Le min ho', 20, 19, 'twinkle', 'Bhagthan', 12, 19, 18, 'South-korea', 'Bhutan', 'Bhutan','Felix', 'Spain', 'team Bhutan', 'Bhutan', 'National');

SELECT * FROM commonWealthGames;
/*group by - count*/
SELECT id,game_name, count(game_name) from commonWealthGames group by game_name;
SELECT id,no_of_players, count(no_of_players) from commonWealthGames group by no_of_players;
SELECT id,country_participated, count(country_participated) from commonWealthGames group by country_participated;
SELECT id,no_of_medals, count(no_of_medals) from commonWealthGames group by no_of_medals;
SELECT id,captain_name, count(captain_name) from commonWealthGames group by captain_name;

/*gruop by-max*/
SELECT id,refree_name, max(refree_name) from commonWealthGames group by game_name;
SELECT id,host_country, max(host_country) from commonWealthGames group by game_name;
SELECT id,qualifier_team_winner, max(qualifier_team_winner) from commonWealthGames group by game_name;
SELECT id,qualifier_team_runner, max(qualifier_team_runner) from commonWealthGames group by game_name;
SELECT id,game_type, max(game_type) from commonWealthGames group by game_name;

/*group by- sum*/
SELECT id,penalty_points, SUM(penalty_points) from commonWealthGames group by game_name;
SELECT id,bonus_points, SUM(bonus_points) from commonWealthGames group by game_name;
SELECT id,sponser, SUM(sponser) from commonWealthGames group by game_name;
SELECT id,venue, SUM(venue) from commonWealthGames group by game_name;
SELECT id,team_rank, SUM(team_rank) from commonWealthGames group by game_name;

/*group by - min*/
SELECT id,team_total_points, min(team_total_points) from commonWealthGames group by game_name;
SELECT id,Player_ranking, min(Player_ranking) from commonWealthGames group by game_name;
SELECT id,winner_team, min(winner_team) from commonWealthGames group by game_name;
SELECT id,runners_team, min(runners_team) from commonWealthGames group by game_name;
SELECT id,semi_final_team, min(semi_final_team) from commonWealthGames group by game_name;

/*group by-avg*/
SELECT id,team_total_points, avg(team_total_points) from commonWealthGames group by game_name;
SELECT id,Player_ranking, avg(Player_ranking) from commonWealthGames group by game_name;
SELECT id,winner_team, avg(winner_team) from commonWealthGames group by game_name;
SELECT id,runners_team, avg(runners_team) from commonWealthGames group by game_name;
SELECT id,semi_final_team, avg(semi_final_team) from commonWealthGames group by game_name;

/* lapd */
SELECT lpad('ANU', 10, 'AA');
SELECT lpad('ANU', 8, 'AA');
SELECT lpad('ANU', 3, 'AA');
SELECT lpad('ANU', 5, 'AA');
SELECT lpad('ANU', 14, 'AA');

/* rpad */
SELECT rpad('ANU', 10, 'AA');
SELECT rpad('ANU', 15, 'AA');
SELECT rpad('ANU', 9, 'AA');
SELECT rpad('ANU', 2, 'AA');
SELECT rpad('ANU', 6, 'AA');

/* like by */
SELECT * FROM commonWealthGames WHERE host_country LIKE '%i'; 
SELECT * FROM commonWealthGames WHERE captain_name LIKE 'v%'; 
SELECT * FROM commonWealthGames WHERE sponser LIKE 'r%'; 
SELECT * FROM commonWealthGames WHERE venue LIKE 'b%'; 
SELECT * FROM commonWealthGames WHERE country_participated LIKE 's%'; 

/*HAVING*/
SELECT id,game_name, count(game_name) as count from commonWealthGames group by game_name having game_name;
SELECT id,no_of_players, count(no_of_players) as count from commonWealthGames group by game_name having no_of_players;
SELECT id,country_participated, count(country_participated) as count from commonWealthGames group by game_name having country_participated;
SELECT id,no_of_medals, count(no_of_medals) as count from commonWealthGames group by game_name having no_of_medals;
SELECT id,captain_name, count(captain_name) as count from commonWealthGames group by game_name having captain_name;

 /* reverse */
SELECT REVERSE(game_name) FROM commonWealthGames;
SELECT REVERSE(country_participated) FROM commonWealthGames;
SELECT REVERSE(captain_name) FROM commonWealthGames;
SELECT REVERSE(sponser) FROM commonWealthGames;
SELECT REVERSE(venue) FROM commonWealthGames;
SELECT REVERSE(team_rank) FROM commonWealthGames;
SELECT REVERSE(winner_team) FROM commonWealthGames;
SELECT REVERSE(runners_team) FROM commonWealthGames;
SELECT REVERSE(refree_name) FROM commonWealthGames;
SELECT REVERSE(host_country) FROM commonWealthGames;

/* order by */
SELECT * FROM commonWealthGames order by id desc;
SELECT * FROM commonWealthGames order by id asc;
SELECT * FROM commonWealthGames order by game_name desc;
SELECT * FROM commonWealthGames order by sponser asc;
SELECT * FROM commonWealthGames order by host_country desc;

/* In */
SELECT * FROM commonWealthGames WHERE id IN(1,2,7,8);
SELECT * FROM commonWealthGames WHERE game_name IN('cricket', 'football', 'kabbaddi', 'hockey', 'swimming');
SELECT * FROM commonWealthGames WHERE host_country IN('india', 'america', 'pakistan');
SELECT * FROM commonWealthGames WHERE id IN(1, 13, 14);
SELECT * FROM commonWealthGames WHERE no_of_medals IN(40, 45, 60, 65);

/* between */
SELECT * FROM commonWealthGames WHERE id between 1 AND 8;
SELECT * FROM commonWealthGames WHERE game_name between 'kabbaddi' AND 'swimming';
SELECT * FROM commonWealthGames WHERE host_country between 'india' AND 'japan';
SELECT * FROM commonWealthGames WHERE id between 6 AND 13;
SELECT * FROM commonWealthGames WHERE no_of_medals between 85 AND 95;
