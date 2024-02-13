\*QUESTION 1 : Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA*\

SELECT *
FROM CITY
WHERE population > 100000 AND CountryCode ='USA'

\*QUESTION 2 : Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA.*\

SELECT NAME
FROM CITY
WHERE population > 120000 AND CountryCode ='USA'

--QUESTION 3 : Query all columns (attributes) for every row in the CITY table

SELECT *
FROM CITY

--QUESTION 4 : Query all columns for a city in CITY with the ID 1661.

SELECT *
FROM CITY
WHERE ID = 1661

--QUESTION 5 : Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN

SELECT *
FROM CITY
WHERE countrycode = 'JPN'

--QUESTION 6 : Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT name
FROM CITY
WHERE countrycode = 'JPN'

--QUESTION 7 : Query a list of CITY and STATE from the STATION table.

SELECT CITY, STATE
FROM STATION

\*QUESTION 8 : Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer*\

SELECT DISTINCT(city)
FROM STATION
WHERE (ID%2) = 0
ORDER BY city ASC

\*QUESTION 9 : Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.*\

SELECT name
FROM Employee
ORDER BY name ASC

\*QUESTION 10 :Write a query that prints a list of employee names (i.e.: the name attribute) for employees in 
Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.*\

SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC


\* QUESTION 11 : Query a count of the number of cities in CITY having a Population larger than 100,000.*\

SELECT COUNT(name)
FROM CITY
WHERE population > 100000

\* QUESTION 12 : Query the total population of all cities in CITY where District is California.*\

SELECT SUM(POPULATION)
FROM CITY
WHERE district ="California"

\* QUESTION 13 : Query the average population of all cities in CITY where District is California.*\

SELECT AVG(POPULATION)
FROM CITY
WHERE District = "California"

\* QUESTION 14 : Query the average population for all cities in CITY, rounded down to the nearest integer*\

SELECT FLOOR(AVG(POPULATION))
FROM CITY

\* QUESTION 15 : Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.*\

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = "JPN"

\* QUESTION 16 : Query the difference between the maximum and minimum populations in CITY*\

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY

\* QUESTION 17 : Find the difference between the total 
number of CITY entries in the table and the number of distinct CITY entries in the table*\

SELECT COUNT(CITY) - COUNT(distinct(CITY))
FROM STATION

\* QUESTION 18 : Query the sum of Northern Latitudes (LAT_N) from STATION having values 
greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places*\

SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345

\* QUESTION 19 : Query the greatest value of the Northern Latitudes (LAT_N) from 
STATION that is less than 137.2345. Truncate your answer to 4 decimal places*\

SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345

\* QUESTION 20 : Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in 
STATION that is less than 137.2345 . Round your answer to 4 decimal places.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N)
                FROM STATION
                WHERE LAT_N < 137.2345)
                
\* QUESTION 21 : Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
Round your answer to 4 decimal places.*\

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780 

\* QUESTION 22 : Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION 
is greater than 38.7780. Round your answer to 4 decimal places.*\

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N)
              FROM STATION
               WHERE LAT_N > 38.7780)
               
\* QUESTION 23 : 





