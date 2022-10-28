CREATE DATABASE business_details;

CREATE TABLE business_data(sl_num int, FirstName varchar(20), LastName varchar(20), EmailId varchar(20), PhoneNo bigint, JoiningDate date, BusinessEntryId int, NationalId long, DepartmentId int, LoginId varchar(20), OrganizationNode varchar(20), JobTitle varchar(20), DOB date, Age int, MartialStatus varchar(20) , Gender varchar(20) , HireDate date, SalariedFlag int, VacationalHours int, SickLeaveHours double);

SELECT * FROM business_data;
SELECT FirstName, Age FROM business_data;

INSERT INTO business_data VALUES(1, 'Annakarmel', 'Bellary', 'annabellary@gmail.com', '9632282245' , '2021-10-23' , '1', '295545412', '10', 'adventure-works\ken0', '0x', '0', '1998-03-22', '25', 'Single', 'Female', '2021-02-25', '1', '99', '69');