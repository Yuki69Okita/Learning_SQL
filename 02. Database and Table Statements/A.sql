/*Creates a new database*/
CREATE DATABASE Games;

/*Drops an existing database*/
DROP DATABASE Games;

/*Shows list with all databases’ names*/
SHOW DATABASES;

/*Uses the named database as default for subsequent statements*/
USE Games;

/*Creates a new table in the database with constrained columns*/
CREATE TABLE Games (
/*AUTO_INCREMENT - Allows a unique number to be generated when a new record is inserted in the table*/
Game_ID INT AUTO_INCREMENT,

/*NOT NULL - Enforces a column to NOT accept NULL values*/
Game_N VARCHAR(255) NOT NULL,

/*DEFAUT some_value - Sets a default value for a column*/
Game_Description TEXT DEFAULT NULL,

Publisher_ID INT,
Developer_ID INT,
Release_Date DATE,

/*CHECK (statement) - Defines a condition that data must met for an operation to be allowed*/
Rating FLOAT(2, 2) CHECK (Rating >= 0 AND Rating <= 10),

/*PRIMARY KEY -	Each record contains UNIQUE and NOT NULL value*/
PRIMARY KEY (Game_ID),

/*FOREIGN KEY - Establishes a link between data in two tables, enforcing referential integrity*/
FOREIGN KEY (Publisher_ID) REFERENCES Publishers(Publisher_ID),
FOREIGN KEY (Developer_ID) REFERENCES Developers(Developer_ID)
);

CREATE TABLE Publishers (
Publisher_ID INT AUTO_INCREMENT,
Publisher_Name VARCHAR(255) NOT NULL,
PRIMARY KEY (Publisher_ID)
);

CREATE TABLE Developers (
Developer_ID INT AUTO_INCREMENT,
Developer_Name VARCHAR(255) NOT NULL,
PRIMARY KEY (Developer_ID)
);

/*Drops an existing table*/
DROP TABLE Games;

/*Alter table is used to add, drop or modify in existing table*/
ALTER TABLE Games
ADD Achivements BOOL,
DROP COLUMN Game_Description,
RENAME COLUMN Game_N TO Game_Name,
MODIFY COLUMN Rating INT;

/*Inserts new records in a table*/
INSERT INTO Games (Game_Name, Release_Date, Publisher_ID, Developer_ID, Achivements, Rating)
VALUES
	("The Binding of Isaac: Rebirth", "2014-11-04", 1, 1, TRUE, 8),
	("The Legend of Bum-Bo", "2019-11-12", 1, 2, FALSE, 5),
	("DARK SOULS™ III", "2016-04-11", 3, 3, TRUE, 10),
	("Mortal Kombat 11", "2019-04-23", 5, 4, TRUE, NULL);
    
INSERT INTO Publishers (Publisher_Name)
VALUES
	("Nicalis, Inc."),
	("Edmund McMillen"),
	("FromSoftware, Inc."),
	("Pine Studio"),
	("Warner Bros. Games");
    
INSERT INTO Developers (Developer_Name)
VALUES
	("Nicalis, Inc."),
	("Edmund McMillen"),
	("FromSoftware, Inc."),
	("Warner Bros. Games");
