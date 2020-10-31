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
#UC11
INSERT INTO address_book VALUES
( 'Sravani', 'Vanama', 'House No.-2', 'City G','State G', '534200', '8675449007', 'sravani@gmail.com','Sravani Vanama','Family'),
( 'Vaishnavi', 'Bhavaraju', 'House No.-3', 'City G','State G', '534200', '6759004322', 'vaishnavi@gmail.com','Vaishnavi Bhavaraju','Friend');
#Usecase13
create table contact (
    contact_id int unsigned not null,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    address varchar(50) not null,
    city varchar(20) not null,
    state varchar(20) not null,
    zip int unsigned not null,
    phone_number varchar(10) not null,
    email_id varchar(30) not null,
    primary key (contact_id)
);

create table address_book_name (
    book_id int unsigned not null,
    book_name varchar(20) not null,
    primary key (book_id)
);

create table address_book_type (
    type_id int unsigned not null,
    type_name varchar(20) not null,
    primary key (type_id)
);

create table address_book(
    contact_id int unsigned not null,
    book_id int unsigned not null,
    type_id int unsigned not null,
    foreign key (contact_id) references contact (contact_id),
    foreign key (book_id) references address_book_name (book_id),
    foreign key (type_id) references address_book_type (type_id)
);

insert into contact values
(1, 'Keerthi','Guntupalli','AP','Hyderabad','AP',123456,12345678,'keerthi@gmail.com'),
(2, 'Sushma','Anumala','AP','Secundarabad','AP',224567,864568935,'sushma@gmail.com'),
(3, 'Sravya','Ammu','AP','Hyderabad','AP',455678,863568900,'sravya@gmail.com'),
(4, 'Sravani','Balla','AP','Kurnool','AP',456780,567889943,'sravani@gmail.com'),
(5, 'Manasa','Kakumanu','AP','Waranga','AP',349423,908765432,'manasa@gmail.com');

insert into address_book_name values
(101, 'myContacts'),
(102, 'officialContacts');

insert into address_book_type values
(50, 'Family'),
(51, 'Friend'),
(52, 'Professional');

insert into address_book values
(1,101,50),
(2,101,51),
(3,101,50),
(4,101,50),
(5,102,52);

select * from contact where city = 'Hyderabad' or state = 'AP';

select city, count(contact_id) from contact group by city;
select state, count(contact_id) from contact group by state;

select * from contact where city = 'Waranga'order by first_name;

select address_book_type.type_name, count(dictionary.contact_id) from address_book
join address_book_type on address_book_type.type_id = address_book.type_id
group by address_book.type_id;







