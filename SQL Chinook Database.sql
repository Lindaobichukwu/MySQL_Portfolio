USE chinook

/* Question 1: Write a query to show the album titles in ascending order*/

SELECT title
FROM album
ORDER BY title ASC;

/* Question 2 : How many artist name starts with B?*/

SELECT COUNT(name)
FROM artist
WHERE name LIKE "B%"

/* QUESTION 3 : Whats the customers name whose city is Oslo?*/

SELECT LastName, FirstName
FROM customer
WHERE city = "Oslo"

/* QUESTION 4 :How many customers do we have from Canada?*/

SELECT COUNT(country)
FROM customer
WHERE country = "canada"

/* QUESTION 5: Whats the average track unit price?*/

SELECT AVG(UnitPrice)
FROM track

/* QUESTION 6: Whats the sum of invoice total per billing country?*/

SELECT BillingCountry, SUM(total)
FROM invoice
GROUP BY BillingCountry

/* QUESTION 7: Show the only three employees whose last names start with P*/

SELECT LastName
FROM employee
WHERE LastName LIKE "P%"






