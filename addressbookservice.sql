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

