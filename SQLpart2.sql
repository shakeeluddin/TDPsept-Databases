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

ALTER TABLE customers RENAME TO cust;


#DML commands
#CREATE - insert into
#READ - select
#UPDATE - update
#DELETE - delete

SELECT * FROM customers;
SELECT c_id, c_name FROM customers;

#                      c1       c2             c3    c4          v1      v2            v3   v4
INSERT INTO customers(c_name, phone_number, points, age) VALUES("ash", "12341234123", 5.6, 123);
INSERT INTO customers(phone_number, c_name, points, age) VALUES("ash2", "12341234123", 5.6, 123);

INSERT INTO customers(phone_number, c_name, points,age) VALUES("ash3", "12341234123", 5.6, 123),("bob", "12341234123", 5.6, 123),("bill", "12341234123", 5.6, 123),("ed", "12341234123", 5.6, 123);



INSERT INTO customers(phone_number, over_18) VALUES("12342123",1);

UPDATE customers SET c_name="blue", phone_number="11233333333" WHERE c_id=2;

DELETE FROM customers WHERE c_id=3;

CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(20),
price DECIMAL(6,2),
PRIMARY KEY(item_id));


CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
total_price DECIMAL(6,2),
PRIMARY KEY(order_id),
FOREIGN KEY (cust_id) REFERENCES customers(c_id));



CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
i_id INT NOT NULL,
quantity INT,
PRIMARY KEY(oi_id),
FOREIGN KEY (ord_id) REFERENCES orders(order_id),
FOREIGN KEY (i_id) REFERENCES items(item_id));

