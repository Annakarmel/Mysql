CREATE DATABASE games;

CREATE TABLE FootballGame(slNo int primary key, id int , fNo int , check(fNo >25), fName varchar(30) not null unique, 
						fEmail varchar(30) not null unique, fContact bigint not null unique, captain varchar(30) not null unique, 
                        captainEmmail varchar(30) not null unique, captainHeight varchar(20) not null unique, captainWeight varchar(20)not null unique, 
                        captainScore int not null unique, captainContact bigint not null unique, coach varchar(30) not null unique, 
                        cEmail varchar(30) not null unique, cContact bigint not null unique, cExpirence varchar(20) not null unique,score int not null unique, 
						place varchar(30) not null unique, venue varchar(30) not null unique, teamName varchar(30) not null unique, NoOfMembers int not null unique,
                        fame varchar(20) not null unique, teamInstaId varchar(30) not null unique, teamFBId varchar(30) not null unique, teamFollowers varchar(20) not null unique,
                        captainFollowers varchar(20) not null unique, winnerTeam varchar(30) not null unique, runnerTeam varchar(30) not null unique, 
                        LooserTeam varchar(30) not null unique, Opponent varchar(30) not null unique, opponentCaptain varchar(30) not null unique, 
                        opponentCoach varchar(30) not null unique, winnerScore int not null unique, runnerScore int not null unique, LooserScore int not null unique, 
                        noOfMedals int not null unique, Sponser varchar(30) not null unique, finalTeam varchar(30) not null unique, semiFinalTeam varchar(30) not null unique,
                        teamRank int not null unique);
 
INSERT INTO FootballGame VALUES(1,101,26,'Sahal Samad','sahal@gmail,com',7412589632,'Sunil Chhetri','sunil@gmail.com','1.7m','71kg',84,8523697412,'Igore Stimac','igore@gmail.com',9632587412,'5 yrs',28,'India','Australia','IndianFootballTeam',10,'11k','FootballTeam','IndianFootball','10m','8m','Indian Football','Australian Football','American Football','Australian football','Robert','Michel',28,25,20,20,'Loreal','Indian Football','Australian Football',20);
INSERT INTO FootballGame VALUES(2,102,27,'Kris','kri@gmail,com',5236984165,'Barak','barak@gmail.com','1.8m','72kg',85,456832175656,'Balu','balu@gmail.com',466565425421,'6 yrs',27,'Pakistan','India','PakFootballTeam',11,'12k','pakFootballTeam','pakFootball','11m','20m','Pakistan Football','India Football','Australia Football','Srishail football','Varun','Rahul',29,24,6,6,'Clinik plus','France Football','Arebia Football',19);
INSERT INTO FootballGame VALUES(3,103,28,'Roheil','rohe@gmail,com',6321456987,'Bruda','bru@gmail.com','1.9m','73kg',86,78768454545,'Kumar','kumar@gmail.com',72525465645,'7 yrs',26,'Afghanistan','Korea','AfghanistaniFootballTeam',12,'13k','afFootballTeam','AfghanistaniFootball','12m','19m','Afghanistan Football','Korea Football','Pakistan Football','Murdeshwar football','Arun','Rohit',30,23,7,7,'HP','Afghanistan Football','Pakistan Football',18);
INSERT INTO FootballGame VALUES(4,104,29,'John','joh@gmail,com',3214569871,'Rabada','raba@gmail.com','1.10m','74kg',87,78543546544,'veeru','veer@gmail.com',96317214545,'8 yrs',25,'Korea','Afghanistan','KoreanFootballTeam',13,'14k','koFootballTeam','KoreanFootball','13m','18m','Korea Football','Afghanistan Football','Afghanistan Football','Asangi football','Shashank','Surya',31,22,9,9,'Nasa','Pakistan Football','Afghanistan Football',17);
INSERT INTO FootballGame VALUES(5,105,30,'Samata','sama@gmail,com',14523697412,'Sharuk','sha@gmail.com','1.5m','75kg',88,25475448545,'Avinash','avi@gmail.com',63214454554,'9 yrs',24,'Srilanka','Nepal','SrilankanFootballTeam',14,'15k','sriFootballTeam','SrilankanFootball','14m','17m','Srilanka Football','Nepal Football','Korea Football','Yallapur football','Nataraj','Pant',32,21,10,10,'ASW','Srilanka Football','Nepal Football',16);
INSERT INTO FootballGame VALUES(6,106,31,'Rogi','rogi@gmail,com',96325287452,'Varun','varun@gmail.com','1.4m','76kg',89,54545454545,'Neeraj','nee@gmail.com',454154518986,'4 yrs',23,'Nepal','Srilanka','NepalianFootballTeam',15,'16k','nFootballTeam','NepalianFootball','15m','16m','Nepal Football','Srilanka Football','Srilanka Football','Kalburgi football','Prasad','Kohli',33,20,21,21,'BMW','Korea Football','Korea Football',15);
INSERT INTO FootballGame VALUES(7,107,32,'Vihar','vihi@gmail,com',45632178969,'Drushya','dru@gmail.com','1.3m','77kg',90,7885454854754,'Samsung','sam@gmail.com',63215485454,'3 yrs',22,'S korea','China','S koreanFootballTeam',16,'17k','skFootballTeam','S koreanFootball','16m','15m','S korea Football','China Football','Nepal Football','Hariyala football','Maruti','Jadeja',34,10,22,22,'JIO','S korea Football','Africa Football',14);
INSERT INTO FootballGame VALUES(8,108,33,'Droba','droba@gmail,com',52369712565,'Deepak','dee@gmail.com','1.2m','78kg',80,574845454632,'Sahala','saha@gmail.com',9623568921,'2 yrs',21,'China','S Korea','ChineseFootballTeam',17,'18k','cFootballTeam','ChineseFootball','17m','14m','China Football','S korea Football','S korea Football','Shivmogga football','Sanjay','Ashwin',35,11,23,23,'Airtel','Nepal Football','S korea Football',13);
INSERT INTO FootballGame VALUES(9,109,34,'Ahena','hena@gmail,com',8523647192,'Sanket','sank@gmail.com','2.7m','79kg',81,24454845841,'Shela','shela@gmail.com',7421454545,'1 yrs',20,'Canada','Europe','CanadianFootballTeam',18,'19k','caFootballTeam','CanadianFootball','18m','13m','Canada Football','Europe Football','China Football','Koppal football','Shashi','Chahala',36,12,24,24,'Shimosis','Canada Football','S africa Football',12);
INSERT INTO FootballGame VALUES(10,110,35,'Salman','salu@gmail,com',7536984125,'Manju','manj@gmail.com','2.2m','80kg',82,74121545445,'Sjeaa','sjee@gmail.com',245678912,'10 yrs',30,'Europe','Canada','EuropeanFootballTeam',19,'10k','eFootballTeam','EuropeanFootball','19m','12m','Europe Football','Canada Football','Canada Football','Mudhol football','Sarat','Drushya',37,13,25,25,'VIVO','China Football','Canada Football',11);
INSERT INTO FootballGame VALUES(11,111,36,'Ali','ali@gmail,com',951364728,'Manoj','manu@gmail.com','2.3m','81kg',83,9631545545,'Sunil','suni@gmail.com',32145678963,'11 yrs',10,'West indies','east indies','w indiesFootballTeam',20,'20k','eiFootballTeam','w indiesFootball','20m','11m','W indies Football','E indies Football','Europe Football','Mallapur football','Prashant','Sehwag',38,14,26,16,'OPPO','w indies Football','China Football',10);
INSERT INTO FootballGame VALUES(12,112,37,'Alladin','aladin@gmail,com',236547891,'Guru','guru@gmail.com','2.4m','82kg',50,6521545454,'Dev','dev@gmail.com',565687687,'12 yrs',11,'East indies','west indies','e indiesFootballTeam',21,'9k','wiFootballTeam','e indiesFootball','21m','9m','E indies Football','W indies Football','W indies Football','Belgavi football','Rakshit','Dhoni',39,15,27,27,'Redmi','e indiesdian Football','Bhutan Football',9);
INSERT INTO FootballGame VALUES(13,113,39,'Le xian','xian@gmail,com',63258713555,'Chetan','chetan@gmail.com','2.5m','83kg',54,74526645425,'Vinay','vinay@gmail.com',7876868686,'13 yrs',12,'Africa','South africa','AfricanFootballTeam',22,'8k','aFootballTeam','AfricanFootball','22m','10m','Africa Football','S africa Football','E indies Football','Banglore football','Bharat','Harbhajn',40,16,28,28,'Lenova','Africa Football','USA Football',8);
INSERT INTO FootballGame VALUES(14,114,40,'Le min','min@gmail,com',65532214489,'Maruti','mari@gmail.com','2.76','84kg',60,36212454545,'Akshara','ak@gmail.com',58654768787,'14 yrs',13,'South africa','Africa','S africanFootballTeam',23,'7k','saFootballTeam','S africanFootball','23m','7m','South africa Football','Africa Football','Africa Football','Sulla football','Pranesh','Mayank',41,17,29,29,'Escal','S africa Football','UK Football',7);
INSERT INTO FootballGame VALUES(15,115,41,'Albert','alb@gmail,com',7896541336,'Pavan','pavan@gmail.com','2.8m','85kg',65,7455656454,'Lokesh','loki@gmail.com',687878724,'15 yrs',14,'Shangai','Bhutan','ShaisFootballTeam',24,'6k','sFootballTeam','ShaisFootball','24m','6m','Shangai Football','Bhutan Football','South africa Football','Katageri football','Shubham','Dinesh',42,18,30,30,'IP','Shangai Football','Yehodhya Football',6);
INSERT INTO FootballGame VALUES(16,116,42,'Yanosh','yanosh@gmail,com',12563417899,'Rudra','rudra@gmail.com','2.9m','86kg',70,36245454545,'Prashant','prash@gmail.com',54514874541,'16 yrs',15,'Bhutan','Shangai','BhutanFootballTeam',25,'5k','bFootballTeam','BhutanFootball','25m','5m','Bhutan Football','Shagnagi Football','Bhutan Football','Chitradurga football','Akshay','Mahendra',43,19,31,31,'Korala','Bhutan Football','Shangai Football',5);
INSERT INTO FootballGame VALUES(17,117,43,'Sehera','sehera@gmail,com',258741369,'Shashank','shash@gmail.com','2.10m','87kg',71,8515454515,'Raju','raj@gmail.com',751767651,'17 yrs',16,'Rusia','Yehodya','RusianFootballTeam',26,'4k','rFootballTeam','RusianFootball','26m','4m','Rusia Football','Yehodya Football','Shangai Football','Kamatagi football','Harish','Manish',44,32,32,32,'Yamaha','Yehodhya Football','Rusia Football',4);
INSERT INTO FootballGame VALUES(18,118,44,'Verba','verba@gmail,com',12365498422,'Arun','aru@gmail.com','2.0m','89kg',72,752346451545,'Mahendra','mahi@gmail.com',5787545454,'18 yrs',17,'Yehodya','Rusia','YehodianFootballTeam',27,'3k','yFootballTeam','YehodianFootball','27m','3m','Rusian Football','Australia Football','Rusia Football','Bagalkot football','Srishyam','Vishak',45,33,33,33,'Hero','Rusia Football','e indies Football',3);
INSERT INTO FootballGame VALUES(19,119,45,'vabama','vabama@gmail,com',45628971232,'Ravi','ravi@gmail.com','2.11m','90kg',73,63252454554,'Vishak','vish@gmail.com',75452456454,'19 yrs',18,'USA','UK','UsaFootballTeam',29,'2k','usFootballTeam','UsaFootball','28m','2m','Usa Football','UK Football','Yehodhya Football','Guledgudd football','Neeraj','Raju',46,34,34,34,'Enfield','USA Football','w indies Football',2);
INSERT INTO FootballGame VALUES(20,120,46,'Annah','annah@gmail,com',9632814250,'Sachin','sachi@gmail.com','3.7m','91kg',74,96324154545,'Vaibhav','vai@gmail.com',322454541448,'20 yrs',19,'UK','USA','UkianFootballTeam',30,'1k','ukFootballTeam','UkianFootball','29m','1m','UK Football','USA Football','UK Football','Chichkandi football','Ravitej','Pavan',47,35,35,35,'Isro','UK Football','France Football',1);

CREATE TABLE VedioGames(slNo int, id int , vNo int , check(vNo >25), publisherId int not null unique, PublisherName varchar(30)not null unique,platformId int not null unique,
						releaseyear bigint not null unique, platformName varchar(30) not null unique, regionId int not null unique, regionName varchar(30) not null unique, 
						gameId int not null unique, gameName varchar(30)not null unique, Centre varchar(30)not null unique, Country varchar(30)not null unique, 
                        Gamer varchar(30)not null unique, GamerId varchar(30)not null unique, GamerContact bigint not null unique, GamerPlace varchar(30)not null unique,
                        Coach varchar(30)not null unique, CoachId int not null unique, foreign key(slNo) references FootballGame(slNo));
                        
INSERT INTO VedioGame VALUES(1,101,26,200,'Annakarmel',300,2000,'Alexa',20,'Japan',123,'PUBG','Adas','Japan','Deepak','99',9632587412,'Guledgudd','Drushya',11);
INSERT INTO VedioGame VALUES(2,102,27,201,'Sneha',301,2001,'HP',19,'West indies',456,'Pacman','Ayesha','West indies','Yash','98',7896325623,'Ilkal','Lokesh',12);
INSERT INTO VedioGame VALUES(3,103,28,202,'Sahana',302,2002,'Lenova',18,'East indies',789,'Tetris','Deva','East indies','Srishyam','97',7412369854,'Katageri','Sunil',13);
INSERT INTO VedioGame VALUES(4,104,29,203,'Mahananda',303,2003,'Loreal',17,'Africa',963,'Wii Sports','Gameskart','Africa','Kiran','96',145869325,'Bilagi','Kori',14);
INSERT INTO VedioGame VALUES(5,105,30,204,'Vishala',304,2004,'Tresume',16,'South africa',852,'SonicHedgeHog','GameZone','South africa','Hanumant','95',9658471569,'Jagadal','Hussen',15);
INSERT INTO VedioGame VALUES(6,106,31,205,'Muskan',305,2005,'Microsoft',15,'Shangai',741,'Diablo III','Blitz','Shangai','Prajwal','94',6352874152,'Mudhol','Yama',16);
INSERT INTO VedioGame VALUES(7,107,32,206,'Swati',306,2006,'Intel',14,'Bhutan',159,'The Sims','B1 wonder','Bhutan','Harsha','93',745258456,'Bagalkot','Guru',17);
INSERT INTO VedioGame VALUES(8,108,33,208,'Shalini',307,2007,'Clinik plus',13,'Rusia',753,'Mario Bros','Antheral','Rusia','Harish','92',741236958,'Chamrajnagar','Santhosh',18);
INSERT INTO VedioGame VALUES(9,109,34,209,'Srinidhi',308,2008,'Nasa',12,'Yehodya',745,'Smash Brothers','Amoeba','Yehodya','Devreddy','91',854158665,'Bhakshi','Dev',19);
INSERT INTO VedioGame VALUES(10,110,35,210,'Pooja',309,2009,'ASW',11,'USA',856,'Pokemon','Games nation','USA','Sachin','90',9635247155,'Vidyagiri','Rudra',20);
INSERT INTO VedioGame VALUES(11,111,36,211,'Preeti',310,2010,'BMW',10,'UK',965,'Zelda','Console','UK','Manju','89',7456985526,'Asangi','Avinash',21);
INSERT INTO VedioGame VALUES(12,112,37,212,'Priya',311,2011,'JIO',9,'Nepal',412,'Metal Gear','Playstaion','Nepal','Varun','88',7415695825,'Kalburgi','Akshay',22);
INSERT INTO VedioGame VALUES(13,113,39,213,'Monica',312,2012,'Airtel',8,'S korea',523,'Halo','Alpha','S korea','Shashank','87',624152455,'Gadag','SAikumar',23);
INSERT INTO VedioGame VALUES(14,114,40,214,'Preksha',313,2013,'Shimosis',7,'China',632,'Final Fantasy','Comcellciti','China','Keshav','86',635471658,'Koppal','Sanket',24);
INSERT INTO VedioGame VALUES(15,115,41,215,'Prerana',314,2014,'VIVO',6,'Canada',256,'Call of Duty','Games heaven','Canada','Joseph','85',3685412684,'Kataginhalli','Sadashiv',25);
INSERT INTO VedioGame VALUES(16,116,42,216,'Precilla',315,2015,'OPPO',5,'Europe',365,'Angry Birds','Pai cyber','Europe','John','84',1478629632,'Yallapur','Ravitej',26);
INSERT INTO VedioGame VALUES(17,117,43,217,'Spandana',316,2016,'Redmi',4,'Malesia',142,'Skyrim','Xbox','Malesia','Shubham','83',9632147852,'Bengalore','Arun',27);
INSERT INTO VedioGame VALUES(18,118,44,218,'Manjula',317,2017,'Escal',3,'France',952,'Theft Auto','Abiba','France','Abhishek','82',8526987412,'Mahalingpur','Varun',28);
INSERT INTO VedioGame VALUES(19,119,45,219,'Kavya',318,2018,'IP',2,'Arebia',784,'WoW','Amiba','Arebia','Fazlum','81',6547896222,'Rabkavi','Prasad',29);
INSERT INTO VedioGame VALUES(20,120,46,220,'Chandu',319,2019,'Fexa',1,'Dubai',362,'Temple run','Habibi','Dubai','Natraja','80',7412685263,'Hubli','Vishak',30);

SELECT * FROM FootballGame;
SELECT * FROM VedioGame;

/*AND*/
SELECT winnerTeam , finalTeam FROM FootballGame WHERE winnerTeam = 'Indian Football' AND finalTeam = 'Indian Football';
SELECT regionName , Country FROM VedioGame WHERE regionName = 'Japan' AND Country = 'Japan';
/*OR*/
SELECT coach , fame FROM FootballGame WHERE id = 101 OR fNo = 26;
SELECT Coach , Gamer FROM VedioGame WHERE regionId = 20 OR gamerId = 123;
/*IN*/
SELECT * FROM VedioGame WHERE PublisherName IN ('Annakarmel','Sneha','Sahana');
SELECT * FROM FootballGame WHERE opponentCaptain IN ('Arun','Shashank','Maruti');
/*NOT IN*/
SELECT * FROM VedioGame WHERE PublisherName NOT IN ('Annakarmel','Sneha','Sahana');
SELECT * FROM FootballGame WHERE opponentCaptain NOT IN ('Arun','Shashank','Maruti');
/*BETWEEN*/
SELECT * FROM FootballGame WHERE place BETWEEN 'India' AND 'Nepal';
SELECT * FROM VedioGame WHERE Coach BETWEEN 'Drushya' AND 'Hussen';
/*ORDER BY*/
SELECT * FROM VedioGame ORDER BY regionId desc;
SELECT * FROM FootballGame ORDER BY captainScore asc;
/*GROUP BY*/
SELECT * FROM FootballGame GROUP BY coach;
SELECT * FROM VedioGame GROUP BY gameName , Centre;
/*HAVING*/
SELECT SUM(id) FROM VedioGame GROUP BY id HAVING id;
SELECT MIN(fNo) FROM FootballGame GROUP BY fNo HAVING fNo;
/*WHERE*/
SELECT * FROM FootballGame WHERE slNo = 5;
SELECT * FROM VedioGame WHERE id = 108;
/*sum*/
SELECT SUM(regionId) FROM VedioGame;
SELECT SUM(captainScore) FROM FootballGame;
/*COUNT*/
SELECT COUNT(*) FROM FootballGame;
SELECT COUNT(*) FROM VedioGame;
/*MAX*/
SELECT MAX(fNo) FROM FootballGame;
SELECT MAX(vNo) FROM VedioGame;
/*MIN*/
SELECT MIN(GamerId) FROM VedioGame;
SELECT MIN(winnerScore) FROM FootballGame;
/*AVG*/
SELECT AVG(publisherId) FROM VedioGame;
SELECT AVG(LooserScore) FROM FootballGame;
/*INNER JOINS*/
SELECT VedioGame.vNo,FootballGame.fNo FROM VedioGame INNER JOIN FootballGame ON VedioGame.vNo = FootballGame.fNo;
SELECT VedioGame.id,FootballGame.id FROM VedioGame INNER JOIN FootballGame ON VedioGame.id = FootballGame.id;
/*LEFT JOIN*/
SELECT VedioGame.id,FootballGame.id FROM VedioGame LEFT JOIN FootballGame ON VedioGame.id = FootballGame.id;
SELECT VedioGame.slNo,FootballGame.slNo FROM VedioGame INNER JOIN FootballGame ON VedioGame.slNo = FootballGame.slNo;
/*RIGHT JOIN*/
SELECT VedioGame.vNo,FootballGame.fNo FROM VedioGame RIGHT JOIN FootballGame ON VedioGame.vNo = FootballGame.fNo;
SELECT VedioGame.id,FootballGame.id FROM VedioGame RIGHT JOIN FootballGame ON VedioGame.id = FootballGame.id;
/*CROSS JOIN*/
SELECT FootballGame.id,VedioGame.id FROM FootballGame,VedioGame;
SELECT FootballGame.fNo,VedioGame.vNo FROM FootballGame,VedioGame;
/*SUBQUIRIES*/
SELECT fNo FROM FootballGame WHERE id = (SELECT id FROM VedioGame WHERE id = 110);
SELECT id FROM VedioGame WHERE vNo = (SELECT fNo FROM FootballGame WHERE id = 118);
SELECT slNo FROM FootballGame WHERE id = (SELECT id FROM VedioGame WHERE id = 115);
SELECT vNo FROM VedioGame WHERE slNo = (SELECT slNo FROM FootballGame WHERE id = 111);
SELECT id FROM FootballGame WHERE fNo = (SELECT vNo FROM VedioGame WHERE id = 109);
