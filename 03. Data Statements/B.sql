/*Set a default DB otherwise you will need to write DB_name.table_name*/
USE Games;

/*Inserting more values*/
INSERT INTO Games (Game_Name, Release_Date, Publisher_ID, Developer_ID, Achivements, Rating)
VALUES
    ("Dead Cells", "2018-08-07", 6, 5, TRUE, 10),
    ("Cuphead", "2017-09-29", 7, 6, TRUE, 9),
    ("Potion Craft: Alchemist Simulator", "2022-12-13", 8, 7, TRUE, 7),
    ("SpongeBob SquarePants: The Cosmic Shake", "2023-01-31", 9, 8, TRUE, NULL),
    ("SpellForce: Conquest of Eo", "2023-02-03", 9, 9, TRUE, NULL),
    ("Undertale", "2015-09-15", 10, 10, FALSE, 7);
    
INSERT INTO Publishers (Publisher_Name)
VALUES
    ("Modern Twin"),
    ("Studio MDHR Entertainment Inc."),
    ("tinyBuild"),
    ("THQ Nordic"),
    ("tobyfox");
    
INSERT INTO Developers (Developer_Name)
VALUES
    ("Modern Twin"),
    ("Studio MDHR Entertainment Inc."),
    ("niceplay games"),
    ("Purple Lamp"),
    ("Owned by Gravity"),
    ("tobyfox");
    
/*Selecting all columns with all records*/
SELECT Game_ID, Game_Name, Release_Date, Publisher_ID, Developer_ID, Achivements, Rating
FROM Games;

SELECT * FROM Games;

/*Selecting different values*/
SELECT DISTINCT Game_Name FROM Games;

/*Filtering records*/
SELECT * FROM Games
WHERE Publisher_ID = 9;

SELECT * FROM Games
WHERE Game_ID > 9;

SELECT * FROM Games
WHERE Game_ID < 9;

SELECT * FROM Games
WHERE Rating >= 5;

SELECT * FROM Games
WHERE Rating <= 5;

SELECT * FROM Games
WHERE Game_Name <> "Cuphead";

SELECT * FROM Games
WHERE Release_Date BETWEEN "2015-09-15" AND "2022-12-13";

SELECT * FROM Games
WHERE Game_Name LIKE "_a_k %III";

SELECT * FROM Games
WHERE Rating IN (10, 9, 8);

/*Used to sort the result-set in ascending or descending order*/
SELECT Game_ID, Game_Name, Rating FROM Games
ORDER BY Rating DESC, Game_Name ASC;

/*Used to filter records based on more than one condition*/
SELECT Game_ID, Game_Name, Rating FROM Games
WHERE Rating = 10 AND Publisher_ID = 6;

SELECT Game_ID, Game_Name, Rating FROM Games
WHERE Rating = 10 OR Publisher_ID = 6;

SELECT * FROM Games
WHERE Game_Name LIKE "%S%" AND (Rating >= 9 OR Release_Date >= "2017-09-29");

SELECT * FROM Games
WHERE Game_Name LIKE "%S%" AND Rating >= 9 OR Release_Date >= "2017-09-29";

/*Used in combination with other operators to give the opposite result*/
SELECT Game_ID, Game_Name FROM Games
WHERE Game_Name NOT LIKE "%S%";

SELECT Game_ID, Game_Name FROM Games
WHERE NOT Publisher_ID = 9 AND NOT Publisher_ID = 1;

/*Used to test if there is a field with no value (null value) or with value*/
SELECT Game_ID, Game_Name, Rating FROM Games
WHERE Rating IS NULL;

SELECT Game_ID, Game_Name, Rating FROM Games
WHERE Rating IS NOT NULL;

/*Used to modify the existing records in a table*/
UPDATE Games
SET Rating = 3 
WHERE Game_ID = 4;

/*Used to delete existing records in a table*/
DELETE FROM Games
WHERE Game_ID > 16;

/*Used to specify the number of records to return*/
SELECT * FROM Games
ORDER BY Game_Name
LIMIT 5;

/*Gives a temporary name*/
SELECT Game_ID, CONCAT(Game_Name, " , ", Release_Date) AS "Game"
FROM Games;

SELECT g.Game_Name, p.Publisher_Name, d.Developer_Name
FROM Games g, Publishers AS p, Developers AS d
WHERE g.Game_Name LIKE "%S%" AND p.Publisher_ID = g.Publisher_ID AND d.Developer_ID = g.Developer_ID;