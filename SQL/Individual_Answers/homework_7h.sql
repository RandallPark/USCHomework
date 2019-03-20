/*
-- Query: SELECT c.name AS movie_categories, SUM(p.amount) AS total_sales
FROM sakila.payment p
LEFT JOIN sakila.rental r USING (rental_id)
LEFT JOIN sakila.inventory i USING (inventory_id)
LEFT JOIN sakila.film_category f USING (film_id)
LEFT JOIN sakila.category c USING (category_id)
GROUP BY (c.name)
ORDER BY total_sales DESC
limit 5
-- Date: 2019-03-19 15:52
*/
INSERT INTO `` (`movie_categories`,`total_sales`) VALUES (Sports,5314.21);
INSERT INTO `` (`movie_categories`,`total_sales`) VALUES (Sci-Fi,4756.98);
INSERT INTO `` (`movie_categories`,`total_sales`) VALUES (Animation,4656.30);
INSERT INTO `` (`movie_categories`,`total_sales`) VALUES (Drama,4587.39);
INSERT INTO `` (`movie_categories`,`total_sales`) VALUES (Comedy,4383.58);
