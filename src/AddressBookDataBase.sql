
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


// UC7 :- Ability to understand the size of address book by City and State

mysql> SELECT COUNT(city) FROM Address_Book;
+-------------+
| COUNT(city) |
+-------------+
|           3 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(city) FROM Address_Book
    -> WHERE state="Karnataka";
+-------------+
| COUNT(city) |
+-------------+
|           2 |
+-------------+
1 row in set (0.00 sec)


// UC8 :- Ability to retrieve entries sorted alphabetically by Person???s name for a given city

mysql> SELECT firstName, lastName,city FROM Address_Book
    -> ORDER BY firstName;
+-----------+----------+-----------+
| firstName | lastName | city      |
+-----------+----------+-----------+
| Ashwath   | Naidu    | Bellery   |
| Gouthum   | G        | Kurnool   |
| Krishna   | Kumar    | Bengaluru |
+-----------+----------+-----------+
3 rows in set (0.00 sec)

// UC9 :- Ability to identify each Address Book with name and Type.

mysql> UPDATE Address_Book SET Department_Type = "Sales Team" WHERE firstName = "Ashwath";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book SET Department_Type = "Marketting Team" WHERE firstName = "Krishna";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book SET Department_Type = "Sales Team" WHERE firstName = "Gouthum";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM Address_Book;
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
| firstName | lastName | Department_Type | address                                                    | city      | state     | zip    | phoneNumber | email              |
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
| Ashwath   | Naidu    | Sales Team      | Near sai baba temple road,more super market,kundhalli gate | Bellery   | Karnataka | 560037 |   900862587 | Ashwath@gmail.com  |
| Krishna   | Kumar    | Marketting Team | near st.Jhons school,KR purma                              | Bengaluru | Karnataka | 560003 |    85274196 | XYZ@gmail.com      |
| Gouthum   | G        | Sales Team      | near shounush nagar,4th cross.                             | Kurnool   | AP        | 401585 |    96374173 | Happy123@gmail.com |
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+--------------------+
3 rows in set (0.00 sec)

//UC10 :- Ability to get number of contact persons i.e. count by type

mysql> SELECT COUNT(firstName) FROM Address_Book WHERE Department_Type = "Sales Team";
+------------------+
| COUNT(firstName) |
+------------------+
|                2 |
+------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(firstName) FROM Address_Book WHERE Department_Type = "Marketting Team";
+------------------+
| COUNT(firstName) |
+------------------+
|                1 |
+------------------+
1 row in set (0.00 sec)

//UC11 :- Ability to add person to both Friend and Family

mysql> INSERT INTO Address_Book values("Anusha","Mohan","Marketting Team","kurnool near durga tmeple","Kurnool","AP",401562,7418503,"Anusha.123@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Address_Book values("Anusha","Mohan","Sales Team","kurnool near durga tmeple","Kurnool","AP",401562,7418503,"Anusha.123@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Address_Book;
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+----------------------+
| firstName | lastName | Department_Type | address                                                    | city      | state     | zip    | phoneNumber | email                |
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+----------------------+
| Ashwath   | Naidu    | Sales Team      | Near sai baba temple road,more super market,kundhalli gate | Bellery   | Karnataka | 560037 |   900862587 | Ashwath@gmail.com    |
| Krishna   | Kumar    | Marketting Team | near st.Jhons school,KR purma                              | Bengaluru | Karnataka | 560003 |    85274196 | XYZ@gmail.com        |
| Gouthum   | G        | Sales Team      | near shounush nagar,4th cross.                             | Kurnool   | AP        | 401585 |    96374173 | Happy123@gmail.com   |
| Anusha    | Mohan    | Marketting Team | kurnool near durga tmeple                                  | Kurnool   | AP        | 401562 |     7418503 | Anusha.123@gmail.com |
| Anusha    | Mohan    | Sales Team      | kurnool near durga tmeple                                  | Kurnool   | AP        | 401562 |     7418503 | Anusha.123@gmail.com |
+-----------+----------+-----------------+------------------------------------------------------------+-----------+-----------+--------+-------------+----------------------+
5 rows in set (0.00 sec)

-- Draw the ER Diagram for Address Book Service DB

create table Person_Address (Address_ID int not null,person_ID int not null,Address varchar(255) not null,city varchar(100) not null,State varchar(100) not null,Zip_Code varchar(10) not null, primary key(Address_ID),
foreign key (person_ID) references Person_contacts(person_ID));

mysql> INSERT INTO Person_Address VALUES (1,1,'BTM layout','Bengaluru','Karnataka','560037'),(2,2,'KR Purm','Bengaluru','Karnataka','560056'),(3,3,'RT Nagar','Kurnool','Andhra pradash','875462'),(4,1,'JP Nagar','Bengaluru','Karnataka','560098');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Person_Address;
+------------+-----------+------------+-----------+----------------+----------+
| Address_ID | person_ID | Address    | city      | State          | Zip_Code |
+------------+-----------+------------+-----------+----------------+----------+
|          1 |         1 | BTM layout | Bengaluru | Karnataka      | 560037   |
|          2 |         2 | KR Purm    | Bengaluru | Karnataka      | 560056   |
|          3 |         3 | RT Nagar   | Kurnool   | Andhra pradash | 875462   |
|          4 |         1 | JP Nagar   | Bengaluru | Karnataka      | 560098   |
+------------+-----------+------------+-----------+----------------+----------+
4 rows in set (0.00 sec)

create table Person_Contacts (person_ID int not null,firstName varchar(50) not null,lastName varchar(50) not null,PhoneNumber varchar(15) not null,Email varchar(30) not null, primary key(person_ID));

mysql> SELECT * FROM Person_contacts;
+-----------+-----------+----------+-------------+-------------------+
| person_ID | firstName | lastName | PhoneNumber | Email             |
+-----------+-----------+----------+-------------+-------------------+
|         1 | virat     | Reddy    | 9632587412  | virat@gmail.com   |
|         2 | karin     | Guda     | 8521479632  | kall123@gmail.com |
|         3 | likth     | kumar    | 569874123   | likth@gmail.com   |
+-----------+-----------+----------+-------------+-------------------+
3 rows in set (0.00 sec)


create table Person_Department (Department_ID int not null,person_ID int not null,Department_Type varchar(30),primary key(Department_ID),
foreign key (person_ID) references Person_contacts(person_ID)
);

mysql> INSERT INTO Person_Department VALUES (1,1,'Frined'),(2,2,'Family'),(3,3,'Profession'),(4,2,'Relative');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Person_Department;
+---------------+-----------+-----------------+
| Department_ID | person_ID | Department_Type |
+---------------+-----------+-----------------+
|             1 |         1 | Frined          |
|             2 |         2 | Family          |
|             3 |         3 | Profession      |
|             4 |         2 | Relative        |
+---------------+-----------+-----------------+
4 rows in set (0.00 sec)


mysql> SELECT Person_ID,city,State FROM Person_Address WHERE Person_ID = 1;
+-----------+-----------+-----------+
| Person_ID | city      | State     |
+-----------+-----------+-----------+
|         1 | Bengaluru | Karnataka |
|         1 | Bengaluru | Karnataka |
+-----------+-----------+-----------+
2 rows in set (0.00 sec)

mysql> SELECT COUNT(city) FROM Person_Address;
+-------------+
| COUNT(city) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

-- Sorting in descending order.

mysql> SELECT DISTINCT Person_contacts.* FROM Person_contacts
    -> INNER JOIN Person_Address ON Person_contacts.person_ID = Person_Address.person_ID
    -> GROUP BY Person_contacts.person_ID
    -> ORDER BY Person_Address.city DESC;
+-----------+-----------+----------+-------------+-------------------+
| person_ID | firstName | lastName | PhoneNumber | Email             |
+-----------+-----------+----------+-------------+-------------------+
|         3 | likth     | kumar    | 569874123   | likth@gmail.com   |
|         1 | virat     | Reddy    | 9632587412  | virat@gmail.com   |
|         2 | karin     | Guda     | 8521479632  | kall123@gmail.com |
+-----------+-----------+----------+-------------+-------------------+
3 rows in set (0.00 sec)

-- Ability to get number of contact persons i.e. count by type

mysql> SELECT COUNT(p.Department_Type) AS ContactPerson FROM Person_Department AS p
    -> INNER JOIN Person_contacts AS c ON c.person_ID = p.person_ID;
+---------------+
| ContactPerson |
+---------------+
|             4 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(p.Department_Type) AS ContactPerson FROM Person_Department AS p
    -> INNER JOIN Person_contacts AS c ON c.person_ID = p.person_ID
    -> GROUP BY p.person_ID;
+---------------+
| ContactPerson |
+---------------+
|             1 |
|             2 |
|             1 |
+---------------+
3 rows in set (0.00 sec)