-- Bethany Fannin
-- Assignment 2

-- 1. Select JobID,Title, min_lvl, and max_lvlof all the
--    listings. Order by JobID.

SELECT  JobID,
        Title,
        min_lvl,
        max_lvl
FROM    Jobs
ORDER BY JobID ASC

-- 2. Select JobID,Title,min_lvl, Cityof all the job listingswheremin_lvlis
--    more than 100.Order by min_lvldescending.

SELECT  JobID,
        Title,
        min_lvl,
        City
FROM    Jobs
WHERE   min_lvl > 100
ORDER BY min_lvl ASC

-- 3. Select JobID, Title, and max_lvl of all the job listingswheremax_levelis
--    equal250.Order by max_lvl descending.

SELECT  JobID,
        Title,
        max_lvl
FROM    Jobs
WHERE max_lvl=250
ORDER BY max_lvl ASC

-- 4. Select JobID,Title, and the difference between the min_lvland max_lvlas
--    Max-MinValue. Order by Max-MinValue descending.

SELECT  JobID,
        Title,
        max_lvl - min_lvl AS [Max-Min Value]
FROM    Jobs
ORDER BY [Max-Min Value] DESC

-- 5. Select JobID,Title, min_lvl, and Sate of all the job listings where
--    the state is ‘NC’ AND max_lvl is more than 150 .Order by JobID.
--    How many rows do you get in the resulting table? 5

SELECT  JobID,
        Title,
        min_lvl,
        [State]
FROM    Jobs
WHERE   [State] = 'NC' AND max_lvl > 150
ORDER BY JobID

-- 6. Select JobID,Title,min_lvl, and Sate of all the job listings where the state is 
--   ‘NC’ORmax_lvl is more than 150.Order by JobID. How many rows do you get in the 
--    resulting table? 14

SELECT  JobID,
        Title,
        min_lvl,
        [State]
FROM    Jobs
WHERE   [State] = 'NC' OR max_lvl > 150
ORDER BY JobID

-- 7. Select JobID,Title, min_lvl, max_lvl, and Cityof all the job listingswhere the City
--    is one of ‘Wilmington’, ‘Raleigh’, or ‘Charlotte’. Use the IN operator.Order by City.

SELECT  JobID,
        Title,
        min_lvl,
        max_lvl,
        City
From    Jobs
WHERE   City IN ('Wilmington', 'Raleigh', 'Charlotte')
ORDER BY City

-- 8. Select JobID,Title, min_lvl, max_lvl, and Cityof all the job listingswhere the City
--   is NOT one of ‘Wilmington’, ‘Raleigh’, or ‘Charlotte’. Use the NOT IN operator.Order by City.

SELECT  JobID,
        Title,
        min_lvl,
        max_lvl,
        City
From    Jobs
WHERE NOT (City IN ('Wilmington', 'Raleigh', 'Charlotte'))
ORDER BY City

-- 9. Select JobIDand Titleof all the job listings where the Title
--    has the word ‘Manager’in it. Use the LIKE operator.Order by Title.

SELECT  JobID,
        Title
FROM    Jobs
WHERE   Title LIKE '%Manager%'
ORDER BY Title

-- 10. Select JobID,Title, City,and Stateof all the job listings where
--     min_lvl is more than 75. Order by State descending and by City descending.

SELECT  JobID,
        Title,
        City,
        [State]
FROM    Jobs
WHERE   min_lvl > 75
ORDER BY [State] DESC,
        City DESC 