/*
-- Query: SELECT s.store_id, ci.city, co.country
FROM sakila.store s 
JOIN sakila.address a USING (address_id)
JOIN sakila.city ci USING (city_id)
JOIN sakila.country co USING (country_id)
LIMIT 0, 1000

-- Date: 2019-03-19 10:13
*/
INSERT INTO `` (`store_id`,`city`,`country`) VALUES (1,'Lethbridge','Canada');
INSERT INTO `` (`store_id`,`city`,`country`) VALUES (2,'Woodridge','Australia');
