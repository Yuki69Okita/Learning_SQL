# Learning SQL

You can correct me if I'm wrong or just tell what to add. <br  />
I'd be very grateful. <br  />
You can see the examples from this lesson in "B.sql".
<hr  />

# 02. Data Statements

## 1. SELECT/FROM:
- Used to select data from a database.
```sql
SELECT column_1, column_2, …
FROM table_name;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/select_from.png" alt="select_from" width="550"/>

- You can use * insead from specifying every column name (returns all columns).
```sql
SELECT *
FROM table_name;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/select_star_from.png" alt="select*_from" width="550"/>

## 2. SELECT DISTINCT:
- Used to return only distinct (different) values.
- If multiple columns are selected, all columns must have same value with another row (only one will be selected).
```sql
SELECT DISTINCT column_1, column_2, …
FROM table_name;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/select_distinct.png" alt="select_distinct" width="400"/>

## 3. WHERE:
- Used to filter records.
- WHERE clause is not only used in SELECT.
```sql
SELECT column_1, column_2, …
FROM table_name
WHERE condition;
```

- <ins><b>Some operators you can use in WHERE:</ins></b>
  - <b>&#61;</b> (Equal)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/where%3D.png" alt="where=" width="550"/>

  <br  />
  
  - <b>&#62;</b> (Greater than)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wheregreater.png" alt="where>" width="550"/>

  <br  />
  
  - <b>&#60;</b> (Less than)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/whereless.png" alt="where<" width="550"/>
  
  <br  />
  
  - <b>&#62;&#61;</b> (Greater than or equal)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wheregreater%3D.png" alt="where>=" width="550"/>
  
  <br  />
  
  - <b>&#60;&#61;</b> (Less than or equal)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/whereless%3D.png" alt="where<=" width="550"/>
  
  <br  />
  
  - <b>&#60;&#62;</b> (or &#33;&#61; in some versions, Not equal)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wherenot%3D.png" alt="where<>" width="550"/>
  
  <br  />
  
  - <b>BETWEEN</b> (Between a certain range)
    - start with the smaller number add "AND" and larger number
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wherebetween.png" alt="wherebetween" width="550"/>
  
  <br  />
  
  - <b>LIKE</b> (Search for a pattern)
    - <i>&#37;</i> - represents zero, one or multiple characters
    - <i>&#95;</i> - represnt one character
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wherelike.png" alt="wherelike" width="550"/>
  
  <br  />
  
  - <b>IN</b> (To specify multiple possible values for a column, like multiple ORs)
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/wherein.png" alt="wherein" width="550"/>

## 4. ORDER BY ASC|DESC:
- Used to sort the result-set in ascending or descending order.
- ORDER BY sorts by default in ascending order.
- If there are several columns, the first column is ordered and if it has same value multiple times, the second column comes in with the ordering and etc.
```sql
SELECT column_1, column_2, …
FROM table_name
ORDER BY column_1, column_2, … ASC|DESC;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/orderby.png" alt="orderby" width="400"/>

## 5. AND:
- Used to filter records based on more than one condition.
- You can use many AND operators.
- AND operator displays a record if ALL conditions are TRUE.
```sql
SELECT column_1, column_2, …
FROM table_name
WHERE condition_1 AND condition_2 AND conditon_3 ..;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/and.png" alt="and" width="400"/>

## 6. OR:
- Used to filter records based on more than one condition.
- You can use many OR operators.
- OR operator displays a record if any of the conditions are TRUE.
- It will show every TRUE condition.
```sql
SELECT column_1, column_2, …
FROM table_name
WHERE condition_1 OR condition_2 OR conditon_3 ..;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/or.png" alt="or" width="400"/>

## 7. Combined AND and OR:
- You can combine OR operator with AND operator, and if needed parenthesis (be careful, you can change the meaning very easly).
```sql
/*It will show a record if condition_1 is TRUE with condition_2 or condtion_3*/
SELECT column_1, column_2, …
FROM table_name
WHERE condition_1 AND (condition_2 OR conditon_3) ..;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/and(or).png" alt="andor1" width="550"/>

```sql
/*It will show a record if condition_1 and condition_2 are TRUE or only condtion_3 is TRUE*/
SELECT column_1, column_2, …
FROM table_name
WHERE condition_1 AND condition_2 OR conditon_3 ..;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/andor.png" alt="andor2" width="550"/>

## 8. NOT:
- Used in combination with other operators to give the opposite result.
- Usually stays before the other operator or before the column name.
```sql
SELECT column_1, column_2, …
FROM table_name
WHERE NOT condition;
```
  - Before operator:
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/not.png" alt="not" width="400"/>
  - Before column:
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/notcol.png" alt="notcol" width="400"/>

## 9. IS NULL|IS NOT NULL:
- Used to test if there is a field with no value (null value).
```sql
SELECT column_1, column_2, …
FROM table_name
WHERE condition IS NULL|IS NOT NULL;
```
  - IS NULL:
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/null.png" alt="null" width="400"/>
  - IS NOT NULL:
  <img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/notnull.png" alt="notnull" width="400"/>

## 10. UPDATE/SET:
- Used to modify the existing records in a table.
- If you are not careful with WHERE clause, all records can be updated the way you don’t want.
```sql
UPDATE table_name
SET column_1 = value_1, column_2 = value_2, …
WHERE condition;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/updateset.png" alt="updateset" width="550"/>

## 11. DELETE FROM:
- Used to delete existing records in a table.
- If you are not careful with WHERE clause, all records can be deleted.
- If some record is deleted (like AUTO_INCREMENT ID), new records will continue from the last number, so you will need to add it manually.
```sql
DELETE FROM table_name
WHERE condition;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/delete.png" alt="deletefrom" width="550"/>

## 12. LIMIT:
- Used to specify the number of records to return.
```sql
SELECT column_1, column_2, …
FROM table_name
LIMIT number;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/limit.png" alt="deletefrom" width="550"/>

## AS:
- Gives a temporary name.
- An alias only exists for a duration of that query.
- Use quotation marks for long name with spaces.
- You can skip typing AS and still works the same.

  - For columns:
    - Used to make column names more readable.
    - If you want to set multiple columns a temporary name – add CONCAT(column_1, “, ” column_2, …) function.
```sql
SELECT column_1, column_2, … AS alias_name
FROM table_name;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/ascol.png" alt="ascol" width="550"/>

  - For tables:
    - Useful when working with multiple tables.
```sql
SELECT column_1, column_2, …
FROM table_name AS alias_name;
```
<img src="https://github.com/Yuki69Okita/Learning_SQL/blob/main/images/results%20from%20B.sql/astable.png" alt="astable" width="550"/>