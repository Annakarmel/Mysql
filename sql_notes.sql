SQL: Structured query language
database: organised collection of tables

functions: fetch
		   insert
		   update 
		   delete
           
DDL statements: (DATA DEFINITION LANGUAGE): These are used to create and manage the structure of database.
				1. CREATE : Used to create the database and table.
				2. ALTER : a)Used to add new column to existing table.
						   b)To rename the column from table.
						   c)To drop the column from table.
						   d)To modify the column datatype.
				3. DROP : To drop the table from database.
				4. TURNCATE : To turncate the data from table.
				
==> Syntax for craeting the database
		# CREATE DATABASE database_name; --> CREATE DATABASE hospital;
		# To run the sql command -> cntl+shipt+enter
		# To see the schemas -> click on schemes then on left side click on refresh button.
		
==> Syntax for craeting the table
		# CREATE TABLE table_name(Column_name1 datatype,column_name2 datatype,column_name3 datatype);
		--> CREATE TABLE hospital_info(id int, hospital_name varchar(50), location varchar(20), type varchar(20));

==> Syntax for fetching the data from tabel
		# SELECT * FROM table_name; --> SELECT * FROM hospital_info;
		# or fetch only the selected part --> SELECT hospital_name,location FROM hospital_info;

==> Syntax for inserting the data into table
		# INSERT INTO table_name VALUES(data1,data2,data3) --> INSERT INTO hospital_info VALUES(1,'Jaydeva','btm','nat');
        # INSERT INTO hospital_info VALUES(1,'Jaydeva','btm','nat');
		# INSERT INTO hospital_info(id,location) VALUES(2,'Rajajinagar');
		# SELECT * FROM hospital_info;

==> DML: (Data Manipulation Language: used to maintain and manage the data inside the table.
		 1.Insert-> Insert the data into the table
         2.Update-> Modify or update the data inside the table
         3.Delete-> Delete the data from table
         4.Select-> Fetch the data from the table)
==> DML:
---> Syntax for update
	 UPDATE table_name SET column_name = 'value' WHERE condition;

==> WHERE : Cndition used to filter the data from the table based on the condition
	Syntax for WHERE 
	SELECT * FROM table_name WHERE condition
==> DELETE:
	Syntax for delete
	DELETE FROM table_name WHERE condition;

==> AND Operator:
cond1 	cond2 	 result
true  	false	 false
false 	true 	 false
false 	false	 false
true  	true   	 true

==> OR Operator:
cond1 	cond2 	 result
true  	false	 true
false 	true 	 true
false 	false	 false
true  	true   	 false

==> in: used to avoid the multiple use of OR operator

==> LIKE: used for pattern matching.
	   %:  It can match any string of length.alter
       
==> INSTR: Position of a charecter of the string.
	Ex: 'GFSG86865'
==> SUBSTR: No. of charecters in the string
		