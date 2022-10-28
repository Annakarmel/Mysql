CREATE DATABASE devices;

use devices;

CREATE TABLE elec_devices(Id int, DivName varchar(50), DivBrand varchar(30), Price bigInt, DivType varchar(30), DivColor varchar(40), DivWeight varchar(30), Ratings varchar(20), DivMaterial varchar(30), DivPowerConsu varchar(30));

SELECT * FROM elec_devices;

INSERT INTO elec_devices VALUES(1, 'Washing machine', 'Whirlpool', 20000, 'Semi automic tap load', 'Brown', '7kg', '5 star', 'Plastic', '30 watt');
INSERT INTO elec_devices VALUES(2, 'Refrigerator', 'LG', 15000, 'Single door', 'Purpel', '5kg', '5 star', 'Steel', 'Ac 230V');
INSERT INTO elec_
devices VALUES(3, 'Television', 'Samsung', 10000, 'Smart', 'Black', '20 inches', '4 star', 'Plastic', '30 watt');
INSERT INTO elec_devices VALUES(4, 'Laptop', 'Lenovo', 40000, 'Core i3', 'Silver', '1.65 kg', '5 star', 'Plastic', 'Ac 230 v');
INSERT INTO elec_devices VALUES(5, 'Air Conditioner', 'Voltas', 8000, 'Split', 'White', '4 kg', '5 star', 'Plastic', '1450 watt');
INSERT INTO elec_devices VALUES(6, 'Air purifiers', 'Acerpure', 5000, 'Room', 'White and balck', '6.5 kg', '4 star','Plastic', '65 watt');
INSERT INTO elec_devices VALUES(7, 'Iron box', 'Morphy richards', 800, 'Dry', 'Red', '5 kg', '3 star', 'Steel', '1000 watt');
INSERT INTO elec_devices VALUES(8, 'Fan', 'Brio turbo', 1000, 'non-remote', 'Black', '5kg', '3 star', 'Gp sheet', '500 watt');
INSERT INTO elec_devices VALUES(9, 'Water purifier', 'Opulus', 4000, 'Electrical', 'Blue', ' 6 kg', '5 star', 'Glass', '48 watt');
INSERT INTO elec_devices VALUES(10, 'Mixer', 'Butterfly', 3000, 'Centrifugal juicer', 'Yellow', '10 kg', '4 star', 'AcrylonitrileButadiene', '100 watt');
INSERT INTO elec_devices VALUES(11, 'Microwave ovens', 'Bajaj', 4200, 'Solo', 'Brown', '17 liter', '4 star', 'Steel', '700 watt');
INSERT INTO elec_devices VALUES(12, 'Coffee Maker', 'French press', 2000, 'Double', 'Silver', '10 litre', '3 star', 'Glass', '80 watt');
INSERT INTO elec_devices VALUES(13, 'Electric cooker', 'Prestige', 12000, 'Rice cooker', 'Pink', '2 kg', '5 star', 'Stainless Steel', '400 watt');
INSERT INTO elec_devices VALUES(14, 'Speaker', 'JBL flip', 3800, 'Wireless', 'Red', '2 kg', '5 star', 'Plastic', '16 watt');
INSERT INTO elec_devices VALUES(15, 'Kittel', 'Pegion', 5500, 'electric', 'Purpel', '1.5 liter', '4 star', 'Steel', '30 watt');
INSERT INTO elec_devices VALUES(16, 'Water gyeser', 'Hindware', 7000, 'Single door', 'Black', '25 liter', '5 star', 'Steel', '2000 watt');
INSERT INTO elec_devices VALUES(17, 'Wet grinder', 'LG', 2800, 'Single door', 'Orange', '2 liter', '3 star', 'Plastic', '150 watt');
INSERT INTO elec_devices VALUES(18, 'Strightner', 'Kiwayi', 400, 'smart', 'Green', '2 kg', '5 star', 'Plastic', '20 watt');

ALTER TABLE elec_devices ADD COLUMN Warranty varchar(20) default '1 years';

UPDATE elec_devices SET Price = 30000, DivColor = 'Navy blue' WHERE Id = 1;
UPDATE elec_devices SET DivWeight = '7 kg', DivColor = 'Violet', DivMaterial = 'Iron', Warranty = '3 years' WHERE DivName = 'Air purifiers';
UPDATE elec_devices SET DivName = 'Cleaners', Price = 5700 WHERE Id = 9;
UPDATE elec_devices SET DivType = 'Wired', DivColor = 'Brown' WHERE Id = 14;
UPDATE elec_devices SET DivMaterial = 'Steel', DivWeight = '4 kg' WHERE DivName = 'Air conditioner';
UPDATE elec_devices SET DivPowerConsu = '320 watt' WHERE Id = 15;
UPDATE elec_devices SET DivName = 'Mixer grinder', Price = 5700 WHERE Id = 10;
UPDATE elec_devices SET DivType = 'Smart', DivColor = 'Black' WHERE Id = 16;
UPDATE elec_devices SET DivColor = 'Red', Price = 6000 WHERE Id = 3;
UPDATE elec_devices SET DivType = 'Sealing fan', DivMaterial = 'Iron' WHERE Id = 8;

DELETE FROM elec_devices WHERE Id = 1; /* commit -> rollback -> delete -> select -> rollback -> select*/
DELETE FROM elec_devices WHERE Id = 6;
DELETE FROM elec_devices WHERE Id = 14;
DELETE FROM elec_devices WHERE Id = 10;
DELETE FROM elec_devices WHERE Id = 16;
DELETE FROM elec_devices WHERE Id = 15;
DELETE FROM elec_devices WHERE Id = 8;
DELETE FROM elec_devices WHERE Id = 9;
DELETE FROM elec_devices WHERE Id = 5;
DELETE FROM elec_devices WHERE Id = 3;
SELECT * FROM elec_devices;
COMMIT;
ROLLBACK;

CREATE TABLE devices_info AS SELECT * FROM elec_devices;

SELECT * FROM devices_info WHERE DivName = 'Laptop' ANd DivColor = 'Silver';
SELECT * FROM devices_info WHERE DivBrand = 'Voltas' AND Ratings = '4 star';
SELECT * FROM devices_info WHERE Price = 15000 AND Warranty = '1 years'; 

SELECT * FROM devices_info WHERE DivType = 'room' OR DivMaterial = 'Plastic';
SELECT * FROM devices_info WHERE DivName = 'LG' OR DivPowerConsu = '10 watt';
SELECT * FROM devices_info WHERE Id = 19 OR Warranty = '6 years';
SELECT * FROM devices_info WHERE DivColor = 'Silver' OR DivWeight = '8 kg';

SELECT * FROM devices_info WHERE Id in(12, 17, 18);
SELECT * FROM devices_info WHERE Id in(2, 5 ,8);
SELECT * FROM devices_info WHERE Id in(9, 10, 11);
SELECT * FROM devices_info WHERE Id in(5, 6, 7);
SELECT * FROM devices_info WHERE Id in(1, 2, 3);

SELECT * FROM devices_info WHERE Id not in(1, 2, 3, 4);
SELECT * FROM devices_info WHERE Id not in(3, 6, 8);
SELECT * FROM devices_info WHERE Id not in(18, 13, 11, 6);
SELECT * FROM devices_info WHERE Id not in(5, 16);

SELECT * FROM devices_info WHERE Id between 1 AND 5;
SELECT * FROM devices_info WHERE Id between 6 AND 10;
SELECT * FROM devices_info WHERE Id between 13 AND 18;
SELECT * FROM devices_info WHERE Id between 8 AND 10 AND 16;

SELECT * FROM devices_info ORDER BY Id desc;
SELECT * FROM devices_info ORDER BY Id asc;

SELECT COUNT(*) AS no_of_rows FROM devices_info;

SELECT SUM(Price) FROM devices_info;
SELECT SUM(DivWeight) FROM devices_info;
SELECT SUM(DivPowerConsu) FROM devices_info;

SELECT MAX(Price) FROM devices_info;
SELECT MAX(DivWeight) FROM devices_info;
SELECT MAX(DivPowerConsu) FROM devices_info;

SELECT MIN(Price) FROM devices_info;
SELECT MIN(DivWeight) FROM devices_info;
SELECT MIN(DivPowerConsu) FROM devices_info;

SELECT AVG(Price) FROM devices_info;

SELECT * FROM devices_info ORDER BY Id;

SELECT * FROM devices_info WHERE DivBrand LIKE 'l%';
SELECT * FROM devices_info WHERE DivType LIKE 's%';
SELECT * FROM devices_info WHERE DivColor LIKE 'w%';
SELECT * FROM devices_info WHERE DivColor LIKE 'p%';

SELECT * FROM devices_info WHERE DivColor LIKE '%a';
SELECT * FROM devices_info WHERE DivBrand LIKE '%s';
SELECT * FROM devices_info WHERE DivMaterial LIKE '%c';
SELECT * FROM devices_info WHERE DivName LIKE '%r';

SELECT * FROM devices_info WHERE DivName LIKE 'a%r%';
SELECT device_type FROM devices_info WHERE DivType LIKE 'r%e%';
SELECT DivColor FROM devices_info WHERE DivColor LIKE 'p%l%';

SELECT DivName FROM devices_info WHERE DivName between 'F' AND 'M';

SELECT UPPER(DivName) FROM devices_info;
SELECT UPPER(DivColor) FROM devices_info;
SELECT UPPER(DivType) FROM devices_info;

SELECT LOWER(DivMaterial) FROM devices_info;
SELECT LOWER(DivBrand) FROM devices_info;

SELECT CONCAT(DivType, DivMaterial) FROM devices_info;
SELECT CONCAT(DivBrand, DivColor) FROM devices_info;

SELECT INSTR(DivBrand, 'r') FROM devices_info;
SELECT INSTR(DivColor, 'p') FROM devices_info;
SELECT INSTR(DivMaterial, 'e') FROM devices_info;

SELECT SUBSTR(DivMaterial,2,3) FROM devices_info;
SELECT SUBSTR(DivName, 4,5) FROM devices_info;
