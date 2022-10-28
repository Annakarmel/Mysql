CREATE DATABASE dance;

CREATE TABLE danceInfo(id int, danceCentre varchar(40), danceAddress varchar(30), Location varchar(30), contact bigint, danceAmt bigint, danceChoreographer varchar(30), danceStyle varchar(30), noOfStudents int, Ratings int, primary key(id,contact,danceAmt));

INSERT INTO danceInfo VALUES(1, 'Chalukya dance centre', 'Rajajinagar', 'Banglore', 9632552155, 5000, 'Chinni master', 'Rock n roll', 15, 9);
INSERT INTO danceInfo VALUES(2, 'Appu dance centre', 'Vidyagiri', 'Bagalkot', 6325874113, 5000, 'Appu master', 'Break dance', 95, 10);
INSERT INTO danceInfo VALUES(3, 'Amulya dance centre', 'Shivaji nagar', 'Chitradurga', 7412528963, 6000, 'Manju master', 'Salsa', 25, 8);
INSERT INTO danceInfo VALUES(4, 'Chakravarti dance centre', 'Ghandi nagar', 'Bellary', 8523697412, 7000, 'Rudra master', 'Ballet', 35, 7);
INSERT INTO danceInfo VALUES(5, 'Raj dance centre', 'Rajkumar Road', 'Hubbali', 6302146785, 5500, 'Sunil master', 'Strip dance', 45, 8);
INSERT INTO danceInfo VALUES(6, 'Darshan dance centre', 'Kalyan nagar', 'Bidar', 753961280, 8500, 'Prabhudev master', 'Kathakali', 55, 9);
INSERT INTO danceInfo VALUES(7, 'Sudeep dance centre', 'Nava nagar', 'Gulbarga', 9963258741, 8000, 'Mayuri upadhya', 'Hip hop', 60, 9);
INSERT INTO danceInfo VALUES(8, 'Shivanna dance centre', 'Bhakshi colony', 'Chamrajnagar', 8869325145, 6500, 'Sneha kapoor', 'Yakshagana', 70, 7);
INSERT INTO danceInfo VALUES(9, 'Yash dance centre', 'Hosuru', 'Gadag', 9632552155, 9500, 'Chinni master', 'Bharatnatyam', 80, 9);
INSERT INTO danceInfo VALUES(10, 'Rishab dance centre', 'Kundadri', 'Manglore', 9632552155, 6500, 'Chinni master', 'Kangilu Nalike', 65, 10);
SELECT * FROM danceInfo;

CREATE TABLE songsInfo(id int not null, Songname varchar(20) unique, SongMovieName varchar(30), ActorOfTheSong varchar(30), SongType varchar(30), Contact bigint, SingerName varchar(30), SongWriter varchar(30), SongComposer varchar(30), Duration varchar(20), foreign key(id) references danceInfo(id));
SELECT * FROM songsInfo;

INSERT INTO songsInfo VALUES(1, 'Baana Dariyalli','Bhagyavantaru','Puneet Rajkumar', 'Soul Music', 9632587412, 'Master Lohith', 'Dr.K.J.Yesudas', 'Chi Udayshankar', '    3:14');
INSERT INTO songsInfo VALUES(2, 'Baanali Badalago','Simplag ond love story','Rakshit shetty', 'Blues Music', 996325542, 'Vijay Prakash', 'Junior NTR', 'Suresh nayak', '3:15    ');
INSERT INTO songsInfo VALUES(3, 'Kannige kano','Kantara','Rishab shetty', '   Jazz Music', 8522369741, 'Vijay Prakash', 'Kalidas', 'PramodKumar', '2:14');
INSERT INTO songsInfo VALUES(4, 'Hrudayada Paadu','Avanalli ivalilli','Praveen', 'Rhythm Music   ', 7412589632, 'Sanjay hegde', 'PAvankumar', 'Janya', '2:44');
INSERT INTO songsInfo VALUES(5, 'Marethuhoyithe','Amar','Amar ambrish', 'Country Music', 7852369123, 'Swaroop mandre', 'Premdas', 'Sarojini', '1:56');
INSERT INTO songsInfo VALUES(6, 'Karabu','Pogaru','Druva sarja', 'Rock Music', 741258962, 'Sumit', 'Devdas', 'Mahananda K', '2:59');
INSERT INTO songsInfo VALUES(7, 'Soul of Dia','Dia','Abhishek', 'Dance Music', 6932587123, 'Puneeth', 'Charan Kumar', 'Muskan P', '5:14');
INSERT INTO songsInfo VALUES(8, 'Rajakumara','Rajakumara','Puneet Rajkumar', 'Roll Music',      6565612122, 'Rajesh krisnan', 'Vijay singh', 'Sahana Shree', '2:14');
INSERT INTO songsInfo VALUES(9, 'Pataki poriyo','Kotigobba 3','        Sudeep', 'Soul Music', 8523697123    , 'Vijay Prakash', 'Dev prasad', 'Pooja Hegde', '3:54');
INSERT INTO songsInfo VALUES(10, 'Hayagide','Tom and Jerry','Sandarsh           ', 'Rock and Rhythm Music', 9632587112, 'Murali', 'Manohar', 'Sneha Mahi', '3:45');

ALTER TABLE songsInfo MODIFY COLUMN Songname varchar(60) not null;

SELECT * FROM songsInfo;
SELECT LENGTH(ActorOfTheSong) FROM songsInfo;
SELECT LTRIM(ActorOfTheSong) FROM songsInfo;
SELECT RTRIM(ActorOfTheSong) FROM songsInfo;
SELECT LTRIM(Contact) FROM songsInfo;
SELECT RTRIM(Contact) FROM songsInfo;
SELECT LTRIM(SongType) FROM songsInfo;
SELECT RTRIM(SongType) FROM songsInfo;
SELECT LTRIM(Duration) FROM songsInfo;
SELECT RTRIM(Duration) FROM songsInfo;
