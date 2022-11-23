use aug_15;

CREATE TABLE cosmeticInfo(id int primary key, brand varchar(30) not null unique, cName varchar(30) not null unique, skinType varchar(30) not null unique, 
						color varchar(30), mainIngridient varchar(30) not null unique,manufacturer varchar(30)not null unique, weight int not null unique,
						quantity varchar(30)not null unique,deliveryAddress varchar(20)not null unique,sensitivity boolean,availability boolean,availableSite varchar(20)not null unique,
						price bigint not null unique,customerNumber bigint not null unique,brandembasider varchar(20) not null unique,locationDelivery varchar(20) not null unique,
						DispatchedFrom varchar(20) not null unique,Ratings varchar(30) not null unique,created_by varchar(30), check(weight<100));

INSERT INTO cosmeticInfo VALUES(1,'LOREAL','Annakarmel','Dry skin','Cream','emulsifiers','Pooja',10,'1/4 av','Guledgudd',True,True,'Amazon',1000,9632587412,'Rahika','Bagalkot','Delhi','10 star',now());
INSERT INTO cosmeticInfo VALUES(2,'Unilever','Sneha','Oily skin','Red','Water','Shrinidhi',11,'1/8 av','Terdala',False,False,'FlipKart',1522,98412655623,'Shamika','Ilkal','Maharastra','9 star',now());
INSERT INTO cosmeticInfo VALUES(3,'Estee Lauder','Sahana','Combination skin','Pink','Preservatives','Aishwarya',12,'1/7 av','Katageri',True,False,'Ajio',752,7412589632,'Rashmika','Chitradurga','Banglore','8 star',now());
INSERT INTO cosmeticInfo VALUES(4,'P & G','Muskan','Scaly skin','Blue','Thickners','Ashwini',13,'1/5 av','Mudhol',True,True,'Purple',123,3698522147,'Ishika','Bellary','Madhyapradesh','7 star',now());
INSERT INTO cosmeticInfo VALUES(5,'Shiseido','Swati','Red spots skin','Yellow','Moisturisers','Sabana',14,'1/3 av','Bagalkot',False,False,'Croma',741,741258962,'Harshika','Bijapur','Goa','6 star',now());
INSERT INTO cosmeticInfo VALUES(6,'LVMH','Vishala','Skin moles','Orange','Colors','Laxmi',15,'1/2 av','Ingalagi',True,True,'Nyka',852,9541845744,'Purvika','Kalburgi','Bengal','5 star',now());
INSERT INTO cosmeticInfo VALUES(7,'Natura&Co','Mahananda','Normal skin','White','Fragrance','Radha',16,'1/1 av','Siddapur',False,True,'Myntra',963,316536543,'Ruthika','Mysore','Chattisghad','4 star',now());
INSERT INTO cosmeticInfo VALUES(8,'Chanel','Shalini','Sensitive skin','Baby pink','Oil','Vaani',17,'2/4 av','Chamrajnagar',False,False,'Stylecraze',147,784521845,'Vrutika','Mandya','UttarPradesh','3 star',now());
INSERT INTO cosmeticInfo VALUES(9,'Beiersdorf','Navya','Fragline skin','Golden','Syrem','Chaitra',18,'2/1 av','Banglore',True,False,'Mamaearth',951,8976542189,'Jivika','Kodagu','TamilNadu','2 star',now());
INSERT INTO cosmeticInfo VALUES(10,'Coty','Kavita','Irritated skin','Silver','Glimmer','Aruna',19,'2/2 av','Kavital',False,True,'Myglamm',3214,456231845,'Devika','Koppal','Andra','1 star',now());

CREATE TABLE Lakme(id int,cName varchar(30)not null unique,manufacturer varchar(30)not null unique,color varchar(30),customer varchar(30)not null unique,
				custID int not null unique,custPhone bigint not null unique, deliveryAddress varchar(30) not null unique, expDate date,manfDate date, 
				Availability boolean, satisfaction boolean,seller varchar(30)not null unique, content varchar(30)not null unique,Ratings varchar(30) not null unique,
				application varchar(30), phBalance bigint not null unique, odour varchar(30) not null unique,comments varchar(30) not null unique, created_by varchar(30), foreign key(id) references cosmeticInfo(id));

INSERT INTO Lakme VALUES(1,'Moisturizer','Muskan','White','Annakarmel',123,846513286,'Kamatagi','2022-10-10','2020-12-12',True,True,'Sneha','Oil','5 Star','Face',3.8,'None','Super',now()); 
INSERT INTO Lakme VALUES(2,'Body lotion','Pondi','Pink','Vishaka',456,741852963,'Chichkhandi','2021-11-11','2020-01-11',False,True,'Pooja','Glimmer','4 Star','Bosy',3.4,'Fragrant','Amazing',now()); 
INSERT INTO Lakme VALUES(3,'Face cream','Vish','Yellow','Mahalaxmi',789,952174562,'Mallapur','2026-12-13','2020-05-23',True,True,'Sahan','emulsifiers','3 Star','Nose',5.2,'Fruity','Superb',now()); 
INSERT INTO Lakme VALUES(4,'Serum','Sneha','Orange','Sapna',741,653219635,'Yallapur','2023-10-15','2020-08-24',False,False,'Radha','Water','2 Star','Face Skin',6.1,'Citrus','Nice',now()); 
INSERT INTO Lakme VALUES(5,'Sun screen','Sunny','Red','Sanjana',852,512354548,'Kanapur','2024-02-16','2020-09-25',True,False,'Verunika','Preservatives','1 Star','Chicks',7.8,'Woody','Good',now()); 
INSERT INTO Lakme VALUES(6,'Kajal','Renuka','Purple','Srushti',963,8418632256,'Iholli','2025-03-18','2020-10-26',False,True,'Monika','Thickners','6 Star','Eyes',8.8,'Chemical','Best',now()); 
INSERT INTO Lakme VALUES(7,'Maskara','Vaidehi','Baby pink','Varsha',159,8465123452,'Beluru','2027-04-24','2020-11-28',False,True,'Chandrika','Moisturisers','7 Star','Eye lashes',9.8,'Sweet','Awesome',now()); 
INSERT INTO Lakme VALUES(8,'EyeLashes','Shweta','Light blue','Shreya',753,963852741,'Pattadkal','2028-05-23','2020-12-29',True,False,'Spandana','Serum','8 Star','Lashes',10.8,'Minty','Benki',now()); 
INSERT INTO Lakme VALUES(9,'Lipstic','Sangeeta','Grey','Anusha',256,5632147896,'Ilkal','2029-06-19','2020-05-16',False,True,'Shashikala','Colors','9 Star','Lip',12.18,'Bitter','Mast',now()); 
INSERT INTO Lakme VALUES(10,'Lip liner','Swati','Merun','Ankita',254,7412589633,'Guledgudd','2030-07-03','2020-08-24',True,False,'Aruna','Fragrance','10 Star','Lips',15.41,'umami','Excellent',now()); 

SELECT * FROM cosmeticInfo;
SELECT * FROM Lakme;
SELECT * FROM LakmeInfo;

/*RENAME*/
ALTER TABLE Lakme RENAME TO LakmeInfo;

/*ALTER*/
ALTER TABLE LakmeInfo ADD COLUMN Price int;
ALTER TABLE LakmeInfo MODIFY COLUMN Price varchar(30);

/*UPDATE*/
UPDATE LakmeInfo SET Price = '10';

/*DELETE*/
DELETE FROM LakmeInfo WHERE id = 10;

/*WHERE*/
SELECT * FROM cosmeticInfo WHERE id = 9;

/*AND*/
SELECT customer , seller FROM LakmeInfo WHERE id = 2 AND id = 3;

/*OR*/
SELECT customer , seller FROM LakmeInfo WHERE id = 3 OR id = 4;

/*ORDER BY*/
SELECT * FROM cosmeticInfo ORDER BY id ASC;
SELECT * FROM cosmeticInfo ORDER BY weight DESC;

/*AGGREGATE FUNCTIONS*/
/*COUNT*/
SELECT COUNT(*) FROM cosmeticInfo;
/*SUM*/
SELECT SUM(price) FROM cosmeticInfo;
/*MAX*/
SELECT MAX(weight) FROM cosmeticInfo;
/*MIN*/
SELECT MIN(price) FROM cosmeticInfo;
/*AVG*/
SELECT AVG(weight) FROM cosmeticInfo;

/*LIKE*/
SELECT * FROM cosmeticInfo WHERE color LIKE 'a%';
SELECT * FROM cosmeticInfo WHERE cName LIKE '%a';

/*INSTR*/
SELECT INSTR('Annakarmel', 'k') AS POSITION;
/*SUBSTR*/
SELECT SUBSTR('ANNAKARMEL',4,4);

/*DISTINCT*/
SELECT DISTINCT(manufacturer) FROM cosmeticInfo;

/*LTRIM*/
SELECT LTRIM(sensitivity) FROM cosmeticInfo;
/*RTRIM*/
SELECT RTRIM(content) FROM LakmeInfo;

/*BETWEEN*/
SELECT * FROM LakmeInfo WHERE customer BETWEEN 'Vishaka' AND 'Srushti';
/*IN*/
SELECT * FROM LakmeInfo WHERE comments IN('Super','Amazing','Mast');

/*CONCAT*/
SELECT CONCAT(cName , customer) AS TOGETHER FROM LakmeInfo;

/*GROUP BY -> COUNT*/
SELECT cName,color, COUNT(color)  FROM cosmeticInfo GROUP BY id;
/*GROUP BY -> SUM*/
SELECT content,Ratings, SUM(phBalance) FROM LakmeInfo GROUP BY phBalance;
/*GROUP BY -> MAX*/
SELECT id,custID , MAX(custID) FROM LakmeInfo GROUP BY custID;
/*GROUP BY -> MIN*/
SELECT id,custID , MIN(custID) FROM LakmeInfo GROUP BY custID;
/*GROUP BY -> AVG*/
SELECT phBalance,custID , AVG(phBalance) FROM LakmeInfo GROUP BY phBalance;

/*HAVING*/
SELECT SUM(id) FROM cosmeticInfo GROUP BY id HAVING id;
SELECT MIN(custID) FROM LakmeInfo GROUP BY custID HAVING custID;

/*REVERSE*/
SELECT REVERSE(content) FROM LakmeInfo;
/*LPAD*/
SELECT LPAD('Annakarmel',4,'A');
/*RPAD*/
SELECT RPAD('Bellary',3,'b');

/*DESC LIMIT*/
SELECT * FROM LakmeInfo ORDER BY id DESC LIMIT 5;
/*GREATEST*/
SELECT GREATEST(3,5,56,14,54,56,4,5);
SELECT GREATEST('Anu','sahana','Muskan','sneha');

/*date-time-day-month-year*/
SELECT datediff('2022-05-12', '2021-06-13');
SELECT datediff('2019-12-28', '2022-12-22');

SELECT dayname('2001-10-22');
SELECT dayname('2002-04-24');

SELECT dayofyear('2022-03-08');
SELECT dayofyear('2021-01-09');

Lock TABLE LakmeInfo read;
UNLOCK tables;

SELECT makedate(2019, 245);
SELECT makedate(2022, 305);

SELECT format(852.6567, 5);
SELECT format(85296324452.56261, 6);

SELECT date_add('2019-10-31', interval 11 second);
SELECT date_add('2018-11-07', interval 11 minute);
SELECT date_add('2018-12-21', interval 11 hour);
SELECT date_add('2022-07-14', interval 12 day);
SELECT date_add('2020-05-28', interval 12 month);
SELECT date_add('2007-04-25', interval 15 week);
SELECT date_add('2010-03-19', interval 15 quarter);
SELECT date_add('2015-02-09', interval 25 year);

/*union and union all*/
SELECT * FROM cosmeticInfo
union
SELECT * FROM LakmeInfo;

SELECT * FROM LakmeInfo
union all
SELECT * FROM cosmeticInfo;

SELECT * FROM cosmeticInfo;
SELECT * FROM Lakme;
SELECT * FROM LakmeInfo;

/*JOINS*/
SELECT LakmeInfo.deliveryAddress, cosmeticInfo.deliveryAddress FROM LakmeInfo inner join cosmeticInfo on LakmeInfo.deliveryAddress = cosmeticInfo.deliveryAddress;
SELECT LakmeInfo.color, cosmeticInfo.color FROM LakmeInfo inner join cosmeticInfo on LakmeInfo.color = cosmeticInfo.color;

SELECT LakmeInfo.deliveryAddress, cosmeticInfo.deliveryAddress FROM LakmeInfo left join cosmeticInfo on LakmeInfo.deliveryAddress = cosmeticInfo.deliveryAddress;
SELECT LakmeInfo.seller, cosmeticInfo.cName FROM LakmeInfo left join cosmeticInfo on LakmeInfo.seller = cosmeticInfo.cName;

SELECT LakmeInfo.manufacturer, cosmeticInfo.cName FROM LakmeInfo right join cosmeticInfo on LakmeInfo.manufacturer = cosmeticInfo.cName;
SELECT LakmeInfo.custID, cosmeticInfo.id FROM LakmeInfo right join cosmeticInfo on LakmeInfo.custID = cosmeticInfo.id;
                      
SELECT LakmeInfo.id, cosmeticInfo.id FROM LakmeInfo,cosmeticInfo;
SELECT LakmeInfo.price, cosmeticInfo.price FROM LakmeInfo,cosmeticInfo;

/*sub quiries*/
SELECT cName FROM cosmeticInfo WHERE id in(SELECT id FROM LakmeInfo WHERE id = 2);
SELECT availableSite FROM cosmeticInfo WHERE deliveryAddress in(SELECT deliveryAddress FROM LakmeInfo WHERE deliveryAddress = 'Guledgudd');
SELECT  skinType FROM cosmeticInfo WHERE mainIngridient in(SELECT content FROM LakmeInfo WHERE id = 4);

UPDATE cosmeticInfo SET cName = 'Srishyam' WHERE id in(SELECT id FROM LakmeInfo WHERE id = 5);
UPDATE LakmeInfo SET color = 'Black' WHERE id in(SELECT id FROM cosmeticInfo WHERE seller = 'Radha');

SELECT * FROM cosmeticInfo;
SELECT * FROM LakmeInfo;

/*VIEWS : VIRTUAL TABLE */
CREATE VIEW cosmeticIf AS SELECT c.color, c.cName,l.content,l.custID FROM cosmeticInfo c, LakmeInfo l;
SELECT * FROM cosmeticIf;
