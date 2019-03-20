
use sakila;

-- Select actors first and last name
SELECT a.first_name, a.last_name
FROM sakila.actor a;

-- Select actors first and last name and combine in one column with new column name
SELECT concat(a.first_name,"  ", a.last_name)
AS full_name
FROM sakila.actor a;

/* 2a. You need to find the ID number, first name, and last name of an actor, 
of whom you know only the first name, "Joe." 
What is one query would you use to obtain this information? */
-- Searching for Joe
SELECT * 
FROM actor
WHERE first_name = "JOE";

/* 2b. Find all actors whose last name contain the letters GEN: */
SELECT *
FROM sakila.actor a
where a.last_name LIKE '%GEN%';

/* 2c. Find all actors whose last names contain the letters LI. 
This time, order the rows by last name and first name, in that order: */
Select a.last_name, a.first_name
FROM sakila.actor a
WHERE a.last_name LIKE '%LI%';

/* 2d. Using IN, display the country_id and country columns of the following countries: 
Afghanistan, Bangladesh, and China: */
SELECT c.country_id, c.country
FROM sakila.country c
WHERE  c.country IN ('Afghanistan', 'Bangladesh', 'China');

/* 3a. Create a column in the table actor named description and use the data type BLOB */
ALTER TABLE sakila.actor 
ADD description BLOB 
AFTER last_name;

/* 3b. Delete the description column. */
ALTER TABLE sakila.actor
DROP column description;

/* 4a. List the last names of actors, as well as how many actors have that last name. */
SELECT a.last_name, count(*) as name_count
FROM sakila.actor a
GROUP BY (a.last_name) 
ORDER BY name_count DESC;

/* 4b. List last names of actors and the number of actors who have that last name, 
but only for names that are shared by at least two actors */
SELECT a.last_name, count(*) as name_count
FROM sakila.actor a
GROUP BY (a.last_name) 
HAVING (name_count >=2)
ORDER BY name_count DESC;

/* 4c. The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. 
Write a query to fix the record. */
UPDATE sakila.actor a
SET a.first_name = 'HARPO'
WHERE a.first_name = 'GROUCHO' and a.last_name = 'WILLIAMS';

SELECT *
FROM sakila.actor a
WHERE a.last_name = 'WILLIAMS';

/* 4d. In a single query, if the first name of the actor is currently HARPO, change it to GROUCHO. */
UPDATE sakila.actor a
SET a.first_name = 'GROUCHO'
WHERE a.first_name = 'HARPO' and a.last_name = 'WILLIAMS';

/* 5a. Which query would you use to re-create the address table? */
SHOW CREATE TABLE sakila.address;

/*  6a. Use JOIN to display the first and last names, as well as the address, of each staff member. 
Use the tables staff and address: */
SELECT s.first_name, s.last_name, a.address
FROM sakila.staff s
LEFT JOIN sakila.address a
ON s.address_id = a.address_id;

/* 6b. Use JOIN to display the total amount rung up by each staff member in August of 2005. 
Use tables staff and payment. */
SELECT s.first_name, s.last_name, p.staff_id, SUM(p.amount) as total_amount
FROM sakila.payment p
JOIN sakila.staff s
on p.staff_id = s.staff_id
WHERE p.payment_date LIKE '2005-08%'
GROUP BY p.staff_id;

/* 6c. List each film and the number of actors who are listed for that film. 
Use tables film_actor and film. Use inner join. */
SELECT f.title, COUNT(fa.actor_id) as number_actors
FROM sakila.film_actor fa
INNER JOIN sakila.film f
ON fa.film_id = f.film_id
GROUP BY fa.film_id;

/* 6d. How many copies of the film Hunchback Impossible exist in the inventory system? */
SELECT f.title, count(i.inventory_id) as in_stock
FROM sakila.inventory i
JOIN sakila.film f
on i.film_id = f.film_id
GROUP BY i.film_id;

/* 6e. Using the tables payment and customer and the JOIN command, list the total paid by each customer. 
List the customers alphabetically by last name: */
SELECT 
