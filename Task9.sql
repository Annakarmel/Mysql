CREATE DATABASE continent;
CREATE TABLE continentInf(id int not null unique, ContinentName varchar(30), NoOfCountries int, MainCity varchar(30), Population bigint, check(NoOfCountries>=5 AND NoOfCountries<=100));

INSERT INTO continentInf VALUES(12, 'Asia', 48, 'Tokyo', 3261050390);
INSERT INTO continentInf VALUES(13, 'Africa', 54, 'Nigeria', 13040598147);
INSERT INTO continentInf VALUES(14, 'Europe', 44, 'Turkey', 741636026);
INSERT INTO continentInf VALUES(15, 'North America', 23, 'Mexico city', 592072212);
INSERT INTO continentInf VALUES(16, 'South America', 12, 'Sao Paulo, Brazil', 430759766);
INSERT INTO continentInf VALUES(17, 'Australia', 14, 'Australasis', 43111704);
INSERT INTO continentInf VALUES(18, 'Antarctica', 6, 'McMurdo Station', 0);
SELECT * FROM continentInf;

/*Limit*/
SELECT * FROM continentInf limit 2;
SELECT * FROM continentInf limit 3;

/*order by*/
SELECT * FROM continentInf order by id desc limit 2;
SELECT * FROM continentInf order by MainCity desc limit 3;

/*REVERSE*/
SELECT REVERSE(ContinentName) FROM continentInf;
SELECT REVERSE(NoOfCountries) FROM continentInf;
SELECT REVERSE(MainCity) FROM continentInf;
SELECT REVERSE(Population) FROM continentInf;
SELECT REVERSE(id) FROM continentInf;
/*reverse another method*/
SELECT REVERSE('ANU');
SELECT REVERSE(123);
SELECT REVERSE(458);
SELECT REVERSE('POOJA');
SELECT REVERSE(1234);

/*greatest*/
SELECT GREATEST(35,56,66,44,76,43,23,65);
SELECT GREATEST(96,45,63,75,94,25,44,32);
SELECT GREATEST(85,96,74,14,25,36,65,99);
SELECT GREATEST(74,24,35,14,15,16,25,85);
SELECT GREATEST(33,22,55,65,77,88,69,99);
SELECT GREATEST(29,82,71,58,62,45,36,45);

/*DATEDIFF:DATEDIFF('yyyy-mm-dd');*/
SELECT datediff('2022-10-11','2022-09-12');
SELECT datediff('2021-12-23','2021-11-28');
SELECT datediff('2020-02-15','2020-01-21');
SELECT datediff('2019-08-09','2019-07-22');
SELECT datediff('2018-09-02','2018-05-06');

/*DAYNAME:*/
SELECT DAYNAME('2022-12-06');
SELECT DAYNAME('2021-11-12');
SELECT DAYNAME('2020-10-10');
SELECT DAYNAME('2019-09-09');
SELECT DAYNAME('2018-03-22');

/*dayofyear*/
SELECT DAYOFYEAR('2022-11-28');
SELECT DAYOFYEAR('2021-12-18');
SELECT DAYOFYEAR('2022-10-13');
SELECT DAYOFYEAR('2020-09-26');
SELECT DAYOFYEAR('2021-03-22');

/*LPAD*/
SELECT LPAD('ANNAKARMEL',11,'A');
SELECT LPAD('MAHANAANDA',12,'K');
SELECT LPAD('MUSKAN',10,'P');
SELECT LPAD('SAHANA',10,'S');
SELECT LPAD('SNEHA',10,'R');

/*RPAD*/
SELECT RPAD('VISHALA',10,'H');
SELECT RPAD('SWATI',10,'H');
SELECT RPAD('SHRINIDHI',10,'D');
SELECT RPAD('POOJA',10,'S');
SELECT RPAD('ARUNA',10,'M');

LOCK TABLE continentInf read;

UNLOCK tables;
