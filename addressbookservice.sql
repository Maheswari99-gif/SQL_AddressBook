#UC1
CREATE DATABASE address_book_service;
SHOW databases;
USE employee_payroll;
select database();
#UC2
CREATE TABLE address_book
(
first_name VARCHAR(80) NOT NULL,
last_name VARCHAR(80) NOT NULL,
address VARCHAR(150) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
zip VARCHAR(6) NOT NULL,
phone VARCHAR(10) NOT NULL,
email VARCHAR(100) NOT NULL
);
DESCRIBE address_book;
#UC3
INSERT INTO address_book VALUES
( 'Bill', 'Gates', 'House No.-1', 'City A', 'State A', '123456', '1234567890', 'billgates@email.com' ),
( 'Mark', 'Zuckerberg', 'House No.-2', 'City B','State B', '345677', '2345678912', 'markzukerberg@email.com' ),
( 'Ambani', 'Mukesh', 'House No.-3', 'City C', 'State C', '986754', '3456789102', 'ambanimukesh@email.com' );
SELECT * FROM address_book;
#UC4
UPDATE address_book
SET city = 'City D'
WHERE first_name = 'Ambani' AND last_name = 'Mukesh';
#UC5
DELETE FROM address_book
WHERE first_name = 'Mark';
#UC6
SELECT * FROM address_book
WHERE city = 'City D';
SELECT * FROM address_book
WHERE state = 'State A';
#UC7
SELECT city,COUNT(city) FROM address_book GROUP BY city;
SELECT state,COUNT(state) FROM address_book GROUP BY state;
#UC8
INSERT INTO address_book VALUES
( 'Mahi', 'Koyyani', 'House No.-1', 'City C','State C', '534260', '8639799558', 'mahi@email.com'),
( 'Hari', 'Koyyani', 'House No.-2', 'City C','State C', '534260', '8539799563', 'hari@gmail.com'),
( 'Sri', 'Koyyani', 'House No.-3', 'City C','State C', '534260', '8439799532', 'sri@gmail.com');
SELECT * FROM address_book WHERE city = 'City C'
ORDER BY first_name;
#UC9
ALTER TABLE address_book ADD name VARCHAR(100);
ALTER TABLE address_book ADD type VARCHAR(100);
ALTER TABLE address_book ALTER type SET DEFAULT 'Friend';
INSERT INTO address_book VALUES
( 'Surya', 'Koyyani', 'House No.-5', 'City C','State C', '534250', '8638974457', 'surya@gmail.com','Surya Koyyani','Family'),
( 'Priya', 'Dubai', 'House No.-8', 'City A','State A', '534240', '8508995688', 'priya@gmail.com','Priya Dubai','Friend');
#UC10
SELECT type, COUNT(first_name) FROM address_book GROUP BY type;






