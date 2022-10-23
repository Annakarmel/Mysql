/* TASK: create table with 10 columns 20 datas for each n evry update column*/
CREATE DATABASE chats;
use chats;

CREATE TABLE chats_details(SlNo int, Chats varchar(30), ChatPrice bigint, Sweets varchar(50), SweetPrice bigint, Starters varchar(50), StarterPrice bigint, GstNo varchar(40), PhoneNo bigint, Address varchar(30));

SELECT * FROM chats_details;

INSERT INTO chats_details VALUES(1, 'Pani Puri', 20, 'Jalebi', 10, 'Aloo Bonda', 50, 'AETF213555455', 963258412, 'Rajajinagar');
INSERT INTO chats_details VALUES(2, 'Masala Puri', 25, 'Sweet samosa', 30, 'Chinees samosa', 60, 'SEWHE4454545', 854126842, 'Gayatrinagar');
INSERT INTO chats_details VALUES(3, 'Sev Puri', 25, 'Rabdi jalebi', 40, 'Khasta kachori', 30, 'WEW4554155', 6321475452, 'Navrang');
INSERT INTO chats_details VALUES(4, 'Aloo Puri', 30, 'Gajar halwa', 35, 'Vegetable cutlet', 40, 'SDSJD5454555', 874255412, 'Kalyanagar');
INSERT INTO chats_details VALUES(5, 'Dahi Puri', 25, 'Rasmalai', 25, 'Vada pav', 45, 'SDS4555455', 7542982554, 'Lalbhag');
INSERT INTO chats_details VALUES(6, 'Bhel Puri', 25, 'Rasgulla', 25, 'Pav bhaji', 50, 'QWFFF55455', 636268415, 'Shivajinagar');
INSERT INTO chats_details VALUES(7, 'Jhal muri', 30, 'Jamoon', 15, 'French fries', 60, 'SSDFDG45451', 896325417, 'Katriguppe');
INSERT INTO chats_details VALUES(8, 'Tikki chaat', 35, 'Kulfie', 30, 'Paneer cutlet', 50, 'ADFDFGD55455', 652147896, 'Kengeri');
INSERT INTO chats_details VALUES(9, 'Kachori', 30, 'Boondi', 25, 'Russian cutlet', 40, 'FGFGD554451', 6556895656, 'Whitefield');
INSERT INTO chats_details VALUES(10, 'Samosa', 20, 'Imarti', 20, 'Sandwich', 30, 'SDFER54452', 896325412, 'Srirampura');
INSERT INTO chats_details VALUES(11, 'Dahi vada', 30, 'Kheer', 20, 'Gobi', 40, 'EERETRT4545', 741258963, 'Ghandhi nagar');

SELECT * FROM chats_details;

ALTER TABLE chats_details ADD COLUMN Ratings varchar(50);

ALTER TABLE chats_details DROP COLUMN Ratings;

ALTER TABLE chats_details RENAME COLUMN SlNo to id;

SELECT * FROM chatDetail;

RENAME TABLE chats_details to chatsDetail;

ALTER TABLE chatsDetail MODIFY COLUMN id bigInt;
SELECT * FROM chatsDetail;

INSERT INTO chatsDetail VALUES(12, 'Golgappe', 20, 'Laddu', 20, 'Noodles', 40, 'GHFG8664545', 851455963, 'Vidyagiri');
INSERT INTO chatsDetail(id, Chats) VALUES(7, 'Jhal muri');
INSERT INTO chatsDetail VALUES(13, 'Sev puri', 20, 'Payasa', 20, 'Gobi', 50, 'EERD454545', 885458963, 'Ghandhi Circle');
INSERT INTO chatsDetail VALUES(14, 'Mirchi bhaji', 25, 'Holagi', 20, 'Momos', 40, 'SDJHS4545', 9865565963, 'Teachers colony');
INSERT INTO chatsDetail VALUES(15, 'Aloo bhaji', 20, 'Huggi', 20, 'Mashroom', 40, 'YUEED5T4545', 75854555563, 'Bagawan peth');
INSERT INTO chatsDetail VALUES(16, 'Brinjal bhaji', 20, 'kesari bath', 20, 'Hakka noodles', 40, 'DSDDDDD45', 963258711, 'Aralikatte');
INSERT INTO chatsDetail VALUES(17, 'Uddin vade', 20, 'Sajjaka', 20, 'Maggie', 40, 'SDED545455', 741258963, 'Cubbon park');
INSERT INTO chatsDetail VALUES(18, 'Banana bhaji', 20, 'Hurali sangti', 20, 'Cheesy maggie', 40, 'WEWD54T4545', 7961548963, 'Sai nagar');
INSERT INTO chatsDetail VALUES(19, 'Onion bhaji', 20, 'Peda', 20, 'Veg maggie', 40, 'EWWR686566', 896352963, 'Anand nagar');
INSERT INTO chatsDetail VALUES(20, 'Bonda', 30, 'Kunda', 20, 'Burger', 40, 'OIEUFI85545', 965258963, 'Anandrao circle');


desc chatsDetail;

ALTER TABLE chatsDetail ADD COLUMN chatCentreName varchar(50) default 'Annakarmel';
SELECT * FROM chatsDetail;

/*WHERE : Cndition used to filter the data from the table based on the condition
/* Syntax for WHERE 
SELECT * FROM table_name WHERE condition*/

SELECT Address FROM chatsDetail where Address = 'Srirampura';
SELECT id,Address FROM chatsDetail where Address = 'Rajajinagar';


SELECT * FROM chatsDetail;

ALTER TABLE chatsDetail ADD COLUMN city varchar(40) default 'Banglore';

/*DML:
Syntax for update
UPDATE table_name SET column_name = 'value' WHERE condition;*/
UPDATE chatsDetail SET city = 'Manglore' WHERE SlNo = 2;
UPDATE chatsDetail SET city = 'Guledgudda' WHERE SlNo = 3;
UPDATE chatsDetail SET Address = 'BTM' WHERE Chats = 'Sev Puri'; /* only one condition*/
UPDATE chatsDetail SET Address = 'Bhakshi colony', SweetPrice = 65 WHERE SlNo = 4;
UPDATE chatsDetail SET city = 'Mudhol', Chats = 'Ragada puri' WHERE SlNo = 5;
UPDATE chatsDetail SET SweetPrice = 60 WHERE SlNo = 8;
UPDATE chatsDetail SET GstNo = 'UIOPFD54545' WHERE SlNo = 9;
UPDATE chatsDetail SET chatCentreName = 'Shree' WHERE SlNo = 10;
UPDATE chatsDetail SET SweetPrice = 60, ChatPrice = 70 WHERE SlNo = 12;
UPDATE chatsDetail SET chatCentreName = 'Pooja' WHERE SlNo = 15;
UPDATE chatsDetail SET chatCentreName = 'Muskan', Address = 'Kuvempu nagar' WHERE SlNo = 18;
SELECT * FROM chatsDetail;


/*DELETE:
Syntax for delete
DELETE FROM table_name WHERE condition;*/
DELETE FROM chatsDetail WHERE SlNo = 12; /* commit -> rollback -> delete -> select -> rollback -> select*/
DELETE FROM chatsDetail WHERE SlNo = 13;
DELETE FROM chatsDetail WHERE SlNo = 15;
DELETE FROM chatsDetail WHERE SlNo = 14;
DELETE FROM chatsDetail WHERE SlNo = 7;
DELETE FROM chatsDetail WHERE SlNo = 20;
DELETE FROM chatsDetail WHERE SlNo = 16;
DELETE FROM chatsDetail WHERE SlNo = 17;
DELETE FROM chatsDetail WHERE SlNo = 18;
COMMIT;
ROLLBACK;


