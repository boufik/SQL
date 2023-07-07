CREATE DATABASE mytestdb
 
USE mytestdb
CREATE TABLE mytesttable
(
rollno INT,
firstname VARCHAR(50),
lastname VARCHAR(50)
)
 
SELECT rollno, firstname, lastname FROM mytesttable
 
INSERT INTO mytesttable(rollno, firstname, lastname)
VALUES(1, 'THOMAS', 'BOUFIKOS')
INSERT INTO mytesttable(rollno, firstname, lastname)
VALUES(2, 'Bill', 'Gates')
INSERT INTO mytesttable(rollno, firstname, lastname)
VALUES(3, 'Elon', 'Musk')
 
SELECT rollno, firstname, lastname FROM mytesttable