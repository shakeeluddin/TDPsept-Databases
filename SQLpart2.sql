CREATE DATABASE kfc;

USE kfc;

CREATE TABLE customers(
c_id INT UNIQUE NOT NULL AUTO_INCREMENT,
c_name VARCHAR(100) DEFAULT "",
phone_number VARCHAR(11) NOT NULL,
over_18 BOOLEAN,
points DECIMAL(6,2),
PRIMARY KEY(c_id)
);

SHOW TABLES;

DESCRIBE customers;
DESCRIBE orders;

DROP TABLE customers;

ALTER TABLE customers ADD age INT NOT NULL; #UPDATE an exisitng table, add a new coloumn

ALTER TABLE customers DROP COLUMN over_18; #UPDATE an exisitng table, delete a coloumn

ALTER TABLE customers MODIFY c_name VARCHAR(50) DEFAULT "N/A"; #UPDATE an existing table, modify existing coloumn definition














CREATE TABLE orders(
o_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
o_date DATE,
PRIMARY KEY(o_id),
FOREIGN KEY (cust_id) REFERENCES customers(c_id));