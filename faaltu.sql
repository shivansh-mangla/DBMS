CREATE DATABASE BBPS;

show databases;

-- selecting the database in which we want to work by default right now.
USE BBPS;

CREATE TABLE STUDENTS(
	studentID int NOT NULL,
	firstName varchar(50) NULL,
	lastName varchar(50) NULL,
    PRIMARY KEY (studentID) 
);

SELECT * FROM STUDENTS;

ALTER TABLE STUDENTS
	ADD DOB date,
    ADD gender char(10);
    
SELECT * FROM STUDENTS;

ALTER TABLE STUDENTS
	DROP COLUMN gender;
    
SELECT * FROM STUDENTS;

TRUNCATE TABLE STUDENTS; -- makes all the values in the table as NULL

SELECT * FROM STUDENTS;

INSERT INTO STUDENTS(studentID,firstName,lastName,DOB)
	VALUES(1022,'shivansh','mangla','2003-05-24');
    
INSERT INTO STUDENTS(studentID,firstName,lastName,DOB)
	VALUES(1024,'bonzi','sharma','2002-05-03');
    
SELECT * FROM STUDENTS;
    
SELECT * FROM STUDENTS WHERE studentID = 1022;

UPDATE STUDENTS
	SET firstName = 'pocky'
    WHERE studentID = 1024;
    
SELECT * FROM STUDENTS;

-- deleting with condition
DELETE FROM STUDENTS
	WHERE studentID = 1022;
    
SELECT * FROM STUDENTS;

-- deleting the whole table. (only the key exists)
-- DELETE FROM STUDENTS;

SELECT * FROM STUDENTS;
-- dropping the whole database
DROP DATABASE BBPS;