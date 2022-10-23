CREATE DATABASE hotels;

CREATE TABLE hotel_names(Slno int, hotelNo bigint, hotelName varchar(10), hotelAddress varchar(15), hotelCity varchar(20), roomNo int, roomType varchar(18), roomPrice double,  checkoutTime time, created_by varchar(20));

SELECT * FROM hotel_names;

INSERT INTO hotel_names VALUES(1, 963258452, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_names VALUES(2, 975225321, 'Anu hotel', 'Rajjainagar', 'Banlore', 166, 'Single room', 3000.00, current_time(), now());
INSERT INTO hotel_names VALUES(3, 895225358, 'Suka Sagar', 'kalyanagar', 'Bagalkot', 256, 'Double room', 6000.00, current_time(), now());
INSERT INTO hotel_names VALUES(4, 635221258, 'Shabari', 'Shivajicircle', 'Mudhol', 123, 'Ac room', 8000.00, current_time(), now());
INSERT INTO hotel_names VALUES(5, 785225625, 'A1 hotel', 'Bagawanpeth', 'Guledgudd', 235, 'NonAc room', 9000.00, current_time(), now());

SELECT * FROM hotel_names;

ALTER TABLE hotel_names ADD COLUMN ratings int;

ALTER TABLE hotel_names ADD COLUMN no_of_rooms int;

SELECT * FROM hotel_names WHERE Slno = 2;

SELECT hotelName FROM hotel_names where hotelName = 'Anu hotel';
SELECT Slno,hotelAddress FROM hotel_names where hotelAddress = 'Rajjainagar';
SELECT hotelCity from hotel_names where hotelCity = 'Banlore';
