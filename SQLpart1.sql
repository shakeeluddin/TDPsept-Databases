#this is a comment
CREATE DATABASE qa_restaurant; #Statment to create a database if it doesn't exist already

USE qa_restaurant; #Need this statement to point to the database we will be interacting with, e.g. creating tables in, adding records to, etc

# (CREATE - DDL) Statement to create a table that doesn't already exist, follows the format of:
# CREATE TABLE tabel_name(
# col_name1 data_type1 constraints1,
# col_name2 data_type2 constraints2,
# PRIMARY KEY(name_of_id_column));
CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY(cust_id));

SHOW TABLES; # Display all the tables in the database you're in (READ - DDL)

DESCRIBE customers; # Display the details of the tables

DROP TABLE customers; # Delete a table (DELETE - DDL)
DROP DATABASE qa_restaurant; # Delete a database (DELETE - DDL)







SELECT * FROM customers; #(READ - DML)