CREATE DATABASE socialMedia;
CREATE TABLE InstagramInfo(id int, UserName varchar(30), userEmailId varchar(30), userPhoneNo bigint, followers varchar(30), mutualFrds int, closeFrds int, followRequest int, noOfGrps int, posts int, likes int);
INSERT INTO InstagramInfo VALUES(1, 'A_star', 'anna@gmail.com', 9632587413, 785, 400, 25, 450, 10, 46, 400);
INSERT INTO InstagramInfo VALUES(2, 'Dolly_sne', 'giddsne@gmail.com', 8523697413, 740, 300, 24, 350, 9, 56, 300);
INSERT INTO InstagramInfo VALUES(3, 'crazy_cat_lady', 'sunny@gmail.com', 7412589632, 560, 200, 23, 250, 8, 23, 200);
INSERT INTO InstagramInfo VALUES(4, 'Rock_maanu', 'maanu@gmail.com', 6325871429, 456, 100, 22, 150, 7, 32, 100);
INSERT INTO InstagramInfo VALUES(5, 'Vish!!', 'vishalu@gmail.com', 9517536402, 412, 150, 21, 120, 6, 21, 150);
INSERT INTO InstagramInfo VALUES(6, 'Im_creepy', 'muskan@gmail.com', 7896541230, 362, 250, 20, 220, 5, 45, 250);
INSERT INTO InstagramInfo VALUES(7, 'The_stanger', 'pooj@gmail.com', 8456321792, 453, 350, 19, 320, 4, 56, 350);
INSERT INTO InstagramInfo VALUES(8, 'Little_Jaanu', 'shrini@gmail.com', 9368257145, 123, 110, 18, 420, 3, 65, 180);
INSERT INTO InstagramInfo VALUES(9, 'Cutie_Princess', 'kushi@gmail.com', 7536984125, 213, 120, 17, 125, 2, 52, 280);
INSERT INTO InstagramInfo VALUES(10, 'LightsApple', 'ash@gmail.com', 8795462130, 325, 230, 16, 230, 1, 35, 380);

CREATE TABLE FaceBook(id int, userName varchar(30), EmailId varchar(30), phoneNo bigint, closeFrds int, friends int, frdRequest int, suggestions int, posts int, likes int, comments int);
INSERT INTO FaceBook VALUES(1, 'Annakarmel', 'anna@gmail.com', 9632587413, 25, 632, 221, 44, 65, 20, 32);
INSERT INTO FaceBook VALUES(2, 'Sneha', 'giddsne@gmail.com', 8523697413, 24, 321, 120, 22, 60, 19, 31);
INSERT INTO FaceBook VALUES(3, 'Sahana', 'sunny@gmail.com', 7412589632, 23, 236, 130, 55, 50, 18, 30);
INSERT INTO FaceBook VALUES(4, 'Mahananda', 'maanu@gmail.com', 6325871429, 22, 456, 140, 88, 55, 16, 19);
INSERT INTO FaceBook VALUES(5, 'Vishalaxi', 'vishalu@gmail.com', 9517536402, 21, 789, 150, 66, 40, 15, 29);
INSERT INTO FaceBook VALUES(6, 'Muskan', 'muskan@gmail.com', 7896541230, 20, 963, 160, 33, 45, 13, 39);
INSERT INTO FaceBook VALUES(7, 'Pooja', 'pooj@gmail.com', 8456321792, 19, 741, 170, 77, 30, 11, 15);
INSERT INTO FaceBook VALUES(8, 'Shrinidhi', 'shrini@gmail.com', 9368257145, 18, 852, 180, 42, 35, 10, 28);
INSERT INTO FaceBook VALUES(9, 'Kushi', 'kushi@gmail.com', 7536984125, 17, 365, 190, 32, 20, 17, 32);
INSERT INTO FaceBook VALUES(10, 'Ashwini', 'ash@gmail.com', 8795462130, 16, 156, 200, 63, 25, 14, 44);

CREATE TABLE Whatsapp(id int, accName varchar(30), contact bigint, emailId varchar(30), no_ofGrps int, no_of_contacts int, no_of_chats int, story_views int, no_of_story int, linked_devices varchar(30), no_of_staredMsgs int);
INSERT INTO Whatsapp VALUES(1, 'Pooja', 9517536402, 'pooj@gmail.com', 12, 145, 20, 144, 2, 'morzilla', 10);
INSERT INTO Whatsapp VALUES(2, 'Shrinidhi', 9632587413, 'shrini@gmail.com', 23, 150, 19, 145, 1, 'crome', 9);
INSERT INTO Whatsapp VALUES(3, 'Muskan', 8523697413, 'muskan@gmail.com', 13, 160, 18, 146, 3, 'browser', 8);
INSERT INTO Whatsapp VALUES(4, 'Mahananda', 7412589632, 'maanu@gmail.com', 14, 170, 17, 155, 4, 'fire fox', 7);
INSERT INTO Whatsapp VALUES(5, 'Vishala', 6325871429, 'vishalu@gmail.com', 15, 180, 16, 160, 6, 'V2009', 6);
INSERT INTO Whatsapp VALUES(6, 'Sneha', 7896541230, 'giddsne@gmail.com', 19, 190, 15, 170, 5, 'Vivo', 5);
INSERT INTO Whatsapp VALUES(7, 'Annakarmel', 8456321792, 'anna@gmail.com', 21, 200, 14, 199, 7, 'Samsung', 4);
INSERT INTO Whatsapp VALUES(8, 'Sahana', 9368257145, 'sunny@gmail.com', 17, 210, 12, 200, 8, 'Lenovo', 3);
INSERT INTO Whatsapp VALUES(9, 'Kushi', 7536984125, 'kushi@gmail.com', 18, 220, 11, 210, 9, 'Acer', 2);
INSERT INTO Whatsapp VALUES(10, 'Ashwini', 8795462130, 'ash@gmail.com', 22, 230, 13, 220, 10, 'Google', 1);

SELECT * FROM InstagramInfo;
SELECT * FROM FaceBook;
SELECT * FROM Whatsapp;

/*INNER JOINS*/
SELECT Whatsapp.accName,FaceBook.userName FROM Whatsapp INNER JOIN FaceBook ON Whatsapp.accName = FaceBook.userName;
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,FaceBook.userName,FaceBook.EmailId FROM InstagramInfo INNER JOIN FaceBook ON InstagramInfo.id = FaceBook.id;
SELECT FaceBook.phoneNo,InstagramInfo.userPhoneNo FROM FaceBook INNER JOIN InstagramInfo ON FaceBook.phoneNo = InstagramInfo.userPhoneNo;
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,Whatsapp.accName,Whatsapp.emailId FROM InstagramInfo INNER JOIN Whatsapp ON InstagramInfo.id = Whatsapp.id;
SELECT FaceBook.EmailId,Whatsapp.emailId FROM FaceBook INNER JOIN Whatsapp ON FaceBook.EmailId = Whatsapp.emailId;

/*LEFT JOINS*/
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,Whatsapp.accName,Whatsapp.emailId FROM InstagramInfo LEFT JOIN Whatsapp ON InstagramInfo.id = Whatsapp.id;
SELECT Whatsapp.accName,FaceBook.userName FROM Whatsapp LEFT JOIN FaceBook ON Whatsapp.accName = FaceBook.userName;
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,FaceBook.userName,FaceBook.EmailId FROM InstagramInfo LEFT JOIN FaceBook ON InstagramInfo.id = FaceBook.id;
SELECT FaceBook.phoneNo,InstagramInfo.userPhoneNo FROM FaceBook LEFT JOIN InstagramInfo ON FaceBook.phoneNo = InstagramInfo.userPhoneNo;
SELECT FaceBook.EmailId,Whatsapp.emailId FROM FaceBook LEFT JOIN Whatsapp ON FaceBook.EmailId = Whatsapp.emailId;

/*RIGHT JOINS*/
SELECT Whatsapp.accName,FaceBook.userName FROM Whatsapp RIGHT JOIN FaceBook ON Whatsapp.accName = FaceBook.userName;
SELECT FaceBook.EmailId,Whatsapp.emailId FROM FaceBook RIGHT JOIN Whatsapp ON FaceBook.EmailId = Whatsapp.emailId;
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,FaceBook.userName,FaceBook.EmailId FROM InstagramInfo RIGHT JOIN FaceBook ON InstagramInfo.id = FaceBook.id;
SELECT FaceBook.phoneNo,InstagramInfo.userPhoneNo FROM FaceBook RIGHT JOIN InstagramInfo ON FaceBook.phoneNo = InstagramInfo.userPhoneNo;
SELECT InstagramInfo.UserName,InstagramInfo.userEmailId,Whatsapp.accName,Whatsapp.emailId FROM InstagramInfo RIGHT JOIN Whatsapp ON InstagramInfo.id = Whatsapp.id;

/*CROSS JOINS*/
SELECT FaceBook.EmailId,InstagramInfo.userEmailId FROM FaceBook,InstagramInfo;
SELECT Whatsapp.contact,InstagramInfo.userPhoneNo FROM Whatsapp,InstagramInfo;
SELECT FaceBook.userName,Whatsapp.accName FROM FaceBook,Whatsapp;
SELECT InstagramInfo.likes,FaceBook.likes FROM InstagramInfo,FaceBook;
SELECT InstagramInfo.userEmailId,Whatsapp.emailId FROM InstagramInfo,Whatsapp;

/*SUBQUERIES*/
SELECT accName FROM Whatsapp WHERE contact = (SELECT userPhoneNo FROM InstagramInfo WHERE id = 10);
SELECT userEmailId FROM InstagramInfo WHERE userEmailId = (SELECT EmailId FROM FaceBook WHERE id = 3);
SELECT contact FROM Whatsapp WHERE id = (SELECT id FROM FaceBook WHERE id = 1);
SELECT friends FROM FaceBook WHERE friends = (SELECT mutualFrds FROM InstagramInfo WHERE id = 3);
SELECT userName FROM FaceBook WHERE userName = (SELECT accName FROM Whatsapp WHERE id = 10);
