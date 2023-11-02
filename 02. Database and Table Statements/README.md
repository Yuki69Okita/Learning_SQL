# Learning SQL

You can correct me if I'm wrong or just tell what to add. <br  />
I'd be very grateful. <br  />
You can see the examples from this lesson in "A.sql".
<hr  />

# 02. Database and Table Statements

## 1. To write first SQL statement:
  - It's not case-sensitive.
  - The names must be meaningful and short.
  - ";" in the end of every statement.
  - To execute (run) press the first lighthning bol.
  - If there are many statements, mark up the one you want to execute.

## 2. Database statements:
  - Creats new SQL database.
```sql
CREATE DATABASE database_name;
```
<br  />

  - Drops an existing SQL database:
```sql
DROP DATABASE database_name;
```
<br  />

  - Shows list with all databases’ names:
```sql
SHOW DATABASES;
```
<br  />

  - Uses the named database as default for subsequent statements:
```sql
USE database_name;
```
<br  />

## 3. Data Types:
  - The data type of a column defines what value the column can hold.<br  /><br  />
  - <ins><b>String data types:</b></ins>
    - <i>CHAR(size)</i>
	    - A FIXED length string which can contain letters, numbers and special characters.
	    - The size parameter specifies the column length in characters – from 0 to 255 (default is 1).

    - <i>VARCHAR(size)</i>
	    - A VARIABLE length string which can contain letters, numbers and special characters.
	    - The size parameter specifies the maximum string length in characters – from 0 to 65535.

    - <i>BINARY(size)</i>
	    - Equal to CHAR(), but stores binary byte strings.
	    - The size parameter specifies the column length in bytes (default is 1).

    - <i>VARBINARY(size)</i>
	    - Equal to VARCHAR(), but stores binary byte strings.
	    - The size parameter specifies the maximum column length in bytes.

    - <i>TINYBLOB</i>
	    - For BLOBs (Binary Large Objects).
	    - Max length: 255 bytes.

    - <i>TINYTEXT</i>
	    - Holds a string with a maximum length of 255 characters.

    - <i>TEXT(size)</i>
	    - Holds a string with a maximum length of 65535 bytes of data.

    - <i>BLOB(size)</i>
	    - For BLOBs (Binary Large Objects).
	    - Holds up to 65535 bytes of data.

    - <i>MEDIUMTEXT</i>
	    - Holds a string with a maximum length of 16777215 characters.

    - <i>MEDIUMBLOB</i>
	    - For BLOBs (Binary Large Objects).
	    - Holds up to 16777215 bytes of data.

    - <i>LONGTEXT</i>
	    - Holds a string with a maximum length of 4294967295 characters.

    - <i>LONGBLOB</i>
	    - For BLOBs (Binary Large Objects).
	    - Holds up to 4294967295 bytes of data.

    - <i>ENUM(value_1, value_2, ...)</i>
	    - A string object that can have only one value, chosen from a list of possible values.
	    - Can hold up to 65636 values in ENUM list.
	    - If  value is inserted that is not in the list, a blank value will be inserted.
	    - The values are sorted in order you enter them.

    - <i>SET(value_1, value_2, ...)</i>
	    - A string object that can have 0 or more values, chosen from a list of possible values.
	    - Can hold up to 64 values in a SET list.<br  /><br  />

  - <ins><b>Numeric data types:</b></ins>
    - <i>BOOL</i>
	    - Zero is considered as FALSE, nonzero values are considered as TRUE.

    - <i>BOOLEAN</i>
	    - Equal to BOOL.

    - <i>BIT(size)</i>
	    - A bit-value type.
	    - The number of bits per value is specified in size.
	    - The size parameter can hold a value from 1 to 64 (default is 1).

    - <i>TINYINT(size)</i>
	    - A very small integer.
	    - Singed range is from -128 to 127.
	    - Unsinged range is from 0 to 255.
	    - The size parameter specifies the maximum display width (which is 255).

    - <i>SMALLINT(size)</i>
	    - A small integer.
	    - Singed range is from -32768 to 32767.
	    - Unsinged range is from 0 to 65535.
	    - The size parameter specifies the maximum display width (which is 255).

    - <i>MEDIUMINT(size)</i>
	    - A medium integer.
	    - Singed range is from -8388608 to 8388607.
	    - Unsinged range is from 0 to 16777215.
	    - The size parameter specifies the maximum display width (which is 255).

    - <i>INT(size)</i>
	    - A medium integer.
	    - Singed range is from - 2147483648 to 2147483647.
	    - Unsinged range is from 0 to 4294967295.
	    - The size parameter specifies the maximum display width (which is 255).

    - <i>INTEGER</i>
	    - Equal to INT(size).

    - <i>BIGINT(size)</i>
	    - A large integer.
	    - Singed range is from - 9223372036854775808 to 9223372036854775807.
	    - Unsinged range is from 0 to 18446744073709551615.
	    - The size parameter specifies the maximum display width (which is 255).

    - <i>FLOAT(size, d)</i>
	    - A floating point number.
	    - The size specifies the total number of digits.
	    - The d specifies the number of digits after the decimal point.

    - <i>FLOAT(P)</i>
	    - A floating point number.
	    - The p value determines whether to use FLOAT() or DOUBLE() for resulting data type.
	    - If p is from 0 to 24, the data type becomes FLOAT().
	    - if p is from 25 to 53, the data type becomes DOUBLE().

    - <i>DOUBLE(size, d)</i>
	    - A normal-size floating point number.
	    - The size specifies the total number of digits.
	    - The d specifies the number of digits after the decimal point.

    - <i>DECIMAL(size, d)</i>
	    - An exact fixed-point number.
	    - The size specifies the total number of digits (maximum is 65, default is 10).
	    - The d specifies the number of digits after the decimal point (maximum is 30, default is 0).

    - <i>DEC(size, d)</i>
	    - Equal to DECIMAL(size, d).<br  /><br  />

  - <ins><b>Date and Time data types:</b></ins>
    - <i>DATE</i>
	    - A date.
	    - Format: YYYY-MM-DD.
	    - The supported range is from '1000-01-01' to '9999-12-31'.

    - <i>DATETIME(fractional seconds precision)</i>
	    - A date and time combination.
	    - Format: YYYY-MM-DD hh:mm:ss.
	    - The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.
	    - Adding DEFAULT and ON UPDATE in the column definition to get automatic initialization and updating to the current date and time.


    - <i>TIMESTAMP(fractional seconds precision)</i>
	    - A timestamp.
	    - TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC).
	    - Format: YYYY-MM-DD hh:mm:ss.
	    - The supported range is from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC. Automatic initialization and updating to the current date and time can be specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP in the column definition.

    - <i>TIME(fractional seconds precision)</i>
	    - A time.
	    - Format: hh:mm:ss.
	    - The supported range is from '-838:59:59' to '838:59:59'.

    - <i>TIME(fractional seconds precision)</i>
	    - A year in four-digit format.
	    - Values allowed in four-digit format: 1901 to 2155, and 0000.

## 3. Constraints:
  - Constraints are used to specify rules for data in a table.
  - You can have multiple constrains on one column.<br  /><br  />

  - <ins><b>Common constraints:</b></ins>
    - <i>NOT NULL</i>
	    - Enforces a column to NOT accept NULL values (by default, a column can hold a NULL value).<br  /><br  />

    - <i>UNIQUE</i>
	    - Ensures that all values in a column are different.<br  /><br  />

    - <i>DEFAUT some_value</i>
	    - Sets a default value for a column.<br  /><br  />

    - <i>CHECK (statement)</i>
	    - Defines a condition that data must met for an operation to be allowed.<br  /><br  />

    - <i>PRIMARY KEY (column_name)</i>
    - <i>CONSTRAINT new_col_name PRIMARY KEY (col_name, col_name, ...)</i>
	    - Each record contains UNIQUE and NOT NULL value.
	    - Ensures that a table have ONE primary key which can be made of one or multiple columns (fields).<br  /><br  />

    - <i>FOREIGN KEY (column_name) REFERENCES table_name (column_name)</i>
	    - It’s a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table (foreign key is like child table and primary key is parent table).
	    - Establishes a link between data in two tables, enforcing referential integrity.<br  /><br  />

    - <i>AUTO INCREMENT</i>
	    - Allows a unique number to be generated when a new record is inserted in the table.
	    - By default, the value starts with 1 and it will be incremented with 1.
	    - To change default starting value: ALTER TABLE table_name AUTO_INCREMENT = new_value;

## 4. Table statements:
  - Creates a table in the database:
```sql
CREATE table_name (
    column_name_1 data_type (and if needed constraints),
    column_name_2 data_type (and if needed constraints),
…);
```
<br  />

  - Drops an existing SQL table:
```sql
DROP TABLE table_name;
```
<br  />

  - Alter table is used to add, drop or modify in existing table:
```sql
ALTER TABLE table_name
ADD column_name data_type,
DROP COLUMN column_name,
RENAME COLUMN old_column_name TO new_column_name,
MODIFY COLUMN column_name new_data_type; 
```
<br  />

  - Inserts new records in a table:
    - If you are adding values for all the columns of the table, you do not need to specify the columns names (make sure the order of the values is the same order as the columns).
    - You can insert multiple records at once if you add a comma between the closing bracket of the previous record and the opening of the new one.

```sql
INSERT INTO table_name (column_1, column_2, …)
VALUES (value_1, value_2, …);
```
