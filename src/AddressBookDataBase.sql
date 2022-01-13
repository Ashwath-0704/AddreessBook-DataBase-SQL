
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


// UC3 :- Ability to insert new Contacts to Address Book

mysql> INSERT INTO Address_Book values("Ashwath","Naidu","Near sai baba temple road,more super market,kundhalli gate","Bengaluru","Karnataka",560037,900862587,"Ashwath@gmail.com");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO Address_Book values("Krishna","Kumar","near st.Jhons school,KR purma","Bengaluru","Karnataka",560003,85274196,"XYZ@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Address_Book values("Gouthum","G","near shounush nagar,4th cross.","Kurnool","AP",401585,96374173,"Happy123@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Address_Book values("Deepthi","Reddy","vipin khand,Gomti Nagar,Lucknow","Lucknow","Uttar Pradesh",520154,956321741,"Sad123@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Address_Book;
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
| firstName | lastName | address                                                    | city      | state         | zip    | phoneNumber | email              |
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
| Ashwath   | Naidu    | Near sai baba temple road,more super market,kundhalli gate | Bengaluru | Karnataka     | 560037 |   900862587 | Ashwath@gmail.com  |
| Krishna   | Kumar    | near st.Jhons school,KR purma                              | Bengaluru | Karnataka     | 560003 |    85274196 | XYZ@gmail.com      |
| Gouthum   | G        | near shounush nagar,4th cross.                             | Kurnool   | AP            | 401585 |    96374173 | Happy123@gmail.com |
| Deepthi   | Reddy    | vipin khand,Gomti Nagar,Lucknow                            | Lucknow   | Uttar Pradesh | 520154 |   956321741 | Sad123@gmail.com   |
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
4 rows in set (0.00 sec)

// UC4 :- Ability to edit existing contact person using their name

mysql> UPDATE Address_Book SET city = 'Bellery' WHERE firstName = 'Ashwath';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM Address_Book;
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
| firstName | lastName | address                                                    | city      | state         | zip    | phoneNumber | email              |
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
| Ashwath   | Naidu    | Near sai baba temple road,more super market,kundhalli gate | Bellery   | Karnataka     | 560037 |   900862587 | Ashwath@gmail.com  |
| Krishna   | Kumar    | near st.Jhons school,KR purma                              | Bengaluru | Karnataka     | 560003 |    85274196 | XYZ@gmail.com      |
| Gouthum   | G        | near shounush nagar,4th cross.                             | Kurnool   | AP            | 401585 |    96374173 | Happy123@gmail.com |
| Deepthi   | Reddy    | vipin khand,Gomti Nagar,Lucknow                            | Lucknow   | Uttar Pradesh | 520154 |   956321741 | Sad123@gmail.com   |
+-----------+----------+------------------------------------------------------------+-----------+---------------+--------+-------------+--------------------+
4 rows in set (0.00 sec)

// UC5 :- Ability to delete a person using person's name

mysql> DELETE FROM Address_Book WHERE firstName = "Deepthi";
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Address_Book;
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
| firstName | lastName | address                                                    | city      | state     | zip    | phoneNumber | email              |
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
| Ashwath   | Naidu    | Near sai baba temple road,more super market,kundhalli gate | Bellery   | Karnataka | 560037 |   900862587 | Ashwath@gmail.com  |
| Krishna   | Kumar    | near st.Jhons school,KR purma                              | Bengaluru | Karnataka | 560003 |    85274196 | XYZ@gmail.com      |
| Gouthum   | G        | near shounush nagar,4th cross.                             | Kurnool   | AP        | 401585 |    96374173 | Happy123@gmail.com |
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
3 rows in set (0.00 sec)

//UC6 :- Ability to Retrieve Person belonging to a City or State from the Address Book

mysql> select * from Address_Book where state = 'Karnataka';
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+-------------------+
| firstName | lastName | address                                                    | city      | state     | zip    | phoneNumber | email             |
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+-------------------+
| Ashwath   | Naidu    | Near sai baba temple road,more super market,kundhalli gate | Bellery   | Karnataka | 560037 |   900862587 | Ashwath@gmail.com |
| Krishna   | Kumar    | near st.Jhons school,KR purma                              | Bengaluru | Karnataka | 560003 |    85274196 | XYZ@gmail.com     |
+-----------+----------+------------------------------------------------------------+-----------+-----------+--------+-------------+-------------------+
2 rows in set (0.00 sec)

