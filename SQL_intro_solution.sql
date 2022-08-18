
-- Use sakila database.
USE sakila; 

-- Get all the data from tables actor, film and customer.
-- actor table
SELECT * FROM sakila.actor; 

-- film table
SELECT * FROM sakila.film;

-- customer
SELECT * FROM sakila.customer;

-- Get film titles.
SELECT f.title FROM sakila.film AS f; -- getting titles at film level.

SELECT DISTINCT f.title FROM sakila.film AS f; -- getting unique titles.

-- Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT DISTINCT l.name AS language FROM sakila.language AS l; -- alias of "name" is "language".

-- Find out how many stores does the company have?
SELECT COUNT(DISTINCT s.store_id) as stores FROM sakila.store AS s; -- the company has 2 stores

-- Find out how many employees staff does the company have?
SELECT COUNT(DISTINCT s.staff_id) AS employees  FROM sakila.staff AS s;

-- Return a list of employee first names only?
SELECT s.first_name FROM  sakila.staff AS s; -- these are the first names at employee level. 

SELECT DISTINCT s.first_name FROM  sakila.staff AS s;  -- these are the uniqe first names. 

