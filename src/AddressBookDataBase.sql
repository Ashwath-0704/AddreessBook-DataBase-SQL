
// UC1 :- Ability to create a Address Book Service DB

mysql> create database Address_Book_DataBase;
Query OK, 1 row affected (0.03 sec)

mysql>  use Address_Book_DataBase;
Database changed
mysql> show databases;
+-----------------------+
| Database              |
+-----------------------+
| address_book_database |
| demo                  |
| information_schema    |
| mysql                 |
| payrool_service       |
| performance_schema    |
| sakila                |
| sys                   |
| world                 |
+-----------------------+
9 rows in set (0.04 sec)


// UC2 :- Ability to create a AddressBook Table with first and last names, address, city, state, zip, phone number and email as its attributes

mysql> create table Address_Book(firstName varchar(255) , lastName varchar(255) , address varchar(255),city varchar(255), state varchar(255), zip int , phoneNumber int , email varchar(255));
Query OK, 0 rows affected (0.09 sec)

mysql> DESC Address_Book;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| firstName   | varchar(255) | YES  |     | NULL    |       |
| lastName    | varchar(255) | YES  |     | NULL    |       |
| address     | varchar(255) | YES  |     | NULL    |       |
| city        | varchar(255) | YES  |     | NULL    |       |
| state       | varchar(255) | YES  |     | NULL    |       |
| zip         | int          | YES  |     | NULL    |       |
| phoneNumber | int          | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

