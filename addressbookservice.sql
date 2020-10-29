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


