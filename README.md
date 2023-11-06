# Learning SQL

You can correct me if I'm wrong or just tell what to add. <br  />
I'd be very grateful.

<details>
  <summary>01. Data and Database</summary>
  
1. &nbsp; [Data](https://github.com/Yuki69Okita/Learning_SQL/tree/main#1-data) <br  />
2. &nbsp; [Database](https://github.com/Yuki69Okita/Learning_SQL/tree/main#2-database-db) <br  />
3. &nbsp; [Types of Databases and Database Systems](https://github.com/Yuki69Okita/Learning_SQL/tree/main#3-types-of-databases-and-database-systems) <br  />
4. &nbsp; [Database Management System](https://github.com/Yuki69Okita/Learning_SQL/tree/main#4-database-management-system-dbms) <br  />
5. &nbsp; [Table](https://github.com/Yuki69Okita/Learning_SQL/tree/main#5-table) <br  />
6. &nbsp; [Structured Query Language](https://github.com/Yuki69Okita/Learning_SQL/tree/main#6-structured-query-language-sql) <br  />
7. &nbsp; [SQL Statement](https://github.com/Yuki69Okita/Learning_SQL/tree/main#7-sql-statement) <br  />
8. &nbsp; [SQL Keywords](https://github.com/Yuki69Okita/Learning_SQL/tree/main#8-sql-keywords) <br  />

</details>

<details>
  <summary>02. Database and Table Statements</summary>
  
1. &nbsp; [To write first SQL statement](https://github.com/Yuki69Okita/Learning_SQL/tree/main/02.%20Database%20and%20Table%20Statements#1-to-write-first-sql-statement) <br  />
2. &nbsp; [Database statements](https://github.com/Yuki69Okita/Learning_SQL/tree/main/02.%20Database%20and%20Table%20Statements#2-database-statements) <br  />
3. &nbsp; [Data Types](https://github.com/Yuki69Okita/Learning_SQL/tree/main/02.%20Database%20and%20Table%20Statements#3-data-types) <br  />
4. &nbsp; [Constraints](https://github.com/Yuki69Okita/Learning_SQL/tree/main/02.%20Database%20and%20Table%20Statements#4-constraints) <br  />
5. &nbsp; [Table statements](https://github.com/Yuki69Okita/Learning_SQL/tree/main/02.%20Database%20and%20Table%20Statements#5-table-statements) <br  />

</details>

<details>
  <summary>03. Data and Database</summary>
  
1. &nbsp; [SELECT/FROM](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#1-selectfrom) <br  />
2. &nbsp; [SELECT DISTINCT](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#2-select-distinct) <br  />
3. &nbsp; [WHERE](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#3-where) <br  />
4. &nbsp; [ORDER BY ASC|DESC](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#4-order-by-ascdesc) <br  />
5. &nbsp; [AND](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#5-and) <br  />
6. &nbsp; [OR](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#6-or) <br  />
7. &nbsp; [Combined AND and OR](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#7-combined-and-and-or) <br  />
8. &nbsp; [NOT](https://github.com/Yuki69Okita/Learning_SQL/tree/main/03.%20Data%20Statements#8-not) <br  />
9. &nbsp; [IS NULL|IS NOT NULL](https://github.com/Yuki69Okita/Learning_SQL/blob/main/03.%20Data%20Statements/README.md#9-is-nullis-not-null) <br  />
10. &nbsp; [UPDATE/SET](https://github.com/Yuki69Okita/Learning_SQL/blob/main/03.%20Data%20Statements/README.md#10-updateset) <br  />
11. &nbsp; [DELETE FROM](https://github.com/Yuki69Okita/Learning_SQL/blob/main/03.%20Data%20Statements/README.md#11-delete-from) <br  />
12. &nbsp; [LIMIT](https://github.com/Yuki69Okita/Learning_SQL/blob/main/03.%20Data%20Statements/README.md#12-limit) <br  />
13. &nbsp; [AS](https://github.com/Yuki69Okita/Learning_SQL/blob/main/03.%20Data%20Statements/README.md#13-as) <br  />

</details>

<hr  />

# 01. Data and Database

## 1. Data:
- Data is a collection of facts, figures and values from different source.

## 2. Database (DB):
- DB is a collection of logically related data in a specific subject area that is structured in a specific way.
- If data in a database is not logically related, it can lead to several issues.

## 3. Types of Databases and Database Systems:
- <b>Relational Database (RDB)</b>
  - stores and provides access to data points that are related to one another.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/relation_db.png" alt="relational_db" width="400"/>
  <br  /><br  />
  
- <b>Object-Oriented Database (OPDB)</b>
  - based on the principles of object-oriented programming (OOP).<br  /><br  />
  - <ins><b>Main components:</b></ins>
    - <i>Objects</i> - represent real-world entities
    - <i>Classes</i> - act as a template for creating object
    - <i>Inheritance</i> - an inherit attributes and methods
    - <i>Methods</i> - represent the behaviors or actions
    - <i>Attributes</i> - hold properties of an object
    - <i>Encapsulation</i> - binds data atributes and methods
    - <i>Polymorphism</i> - helps in write generic reusable code
    - <i>Persistence</i> - objects continuing to exit
    - <i>Identity</i> - objects is as assinged unique identifier
    - <i>Transactions</i> - provide reability with features
    <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/object-oriented_db.png" alt="object-oriented_db" width="400"/>
<br  /><br  />

- <b>Graph Database (GDB)</b>
  - uses graph structures for semantic queries with nodes, edges and properties to represent and store data.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/graph_db.png" alt="graph_db" width="400"/>
<br  /><br  />

- <b>Distributed Database (DDB)</b>
  - is stored across multiple locations.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/distrebuted_db.png" alt="distributed_db" width="400"/>
<br  /><br  />

- <b>Centralized Database (CDB)</b>
  - is located, stored and maintained in a single location.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/centralized_db.png" alt="centralized_db" width="400"/>
  <br  /><br  />
  
- <b>Cloud Database</b>
  - is deployed, delivered and accessed in the cloud.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/cloud_db.png" alt="cloud_db" width="400"/>
  <br  /><br  />
  
- <b>NoSQL Database (Not Only SQL)</b>
  - is purpose-built for non-relational data models.
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/types%20DB/nosql_db.png" alt="nosql_db" width="400"/>
  <br  /><br  />
  
- <b>Others</b>
  - there are many different types and systems.

## 4. Database Management System (DBMS):
- DBMS is a software system that is used to manage databases.
- It provides a way to create, store, retrieve, update, and manage data efficiently and securely.<br  /><br  />

- <ins><b>Examples:</b></ins>
  - <i>MySQL</i>
  - <i>PostgreSQL</i>
  - <i>Oracle Database</i>
  - <i>Microsoft SQL Server</i>
  - <i>MongoDB</i> - a NoSQL DBMS
  - <i>SQLite</i>
  - <i>Redis</i> - for in-memory data storage
  - <i>Cassandra</i> - for distributed, NoSQL databases

 ## 5. Table:
 - Table is a collection of data in a tabular form.
   - Tuple is a row in a table.
   - Attribute is a column in a table.
  
## 6. Structured Query Language (SQL):
  - SQL lets you to access and manipulate databases.<br  /><br  />
  - <ins><b>Examples:</b></ins>
    - Execute queries against a database.
    - Retrieve data from a database.
    - Insert records in a database.
    - Update records in database.
    - Delete records in database.
    - Create new databases.
    - Create new tables in a database.
    - Create stored procedures in a database.
    - Create views in a database.
    - Set a permission on tables, procedures and views.
      
## 7. SQL Statement:
  - SQL statement is a set of instruction that consists of identifiers, parameters, variables, names, data types and SQL reserved words that compiles successfully.

## 8. SQL Keywords:
  - SQL keywords are reserved words.
  - They do something and can’t be used as names.
