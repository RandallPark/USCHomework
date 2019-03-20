/*
-- Query: SELECT cu.first_name, cu.last_name, cu.email, co.country
FROM sakila.customer cu
JOIN sakila.address a USING (address_id)
JOIN sakila.city ci USING (city_id)
JOIN sakila.country co USING (country_id)
WHERE co.country = 'Canada'
LIMIT 0, 1000

-- Date: 2019-03-19 08:47
*/
INSERT INTO `` (`first_name`,`last_name`,`email`,`country`) VALUES ('DERRICK','BOURQUE','DERRICK.BOURQUE@sakilacustomer.org','Canada');
INSERT INTO `` (`first_name`,`last_name`,`email`,`country`) VALUES ('DARRELL','POWER','DARRELL.POWER@sakilacustomer.org','Canada');
INSERT INTO `` (`first_name`,`last_name`,`email`,`country`) VALUES ('LORETTA','CARPENTER','LORETTA.CARPENTER@sakilacustomer.org','Canada');
INSERT INTO `` (`first_name`,`last_name`,`email`,`country`) VALUES ('CURTIS','IRBY','CURTIS.IRBY@sakilacustomer.org','Canada');
INSERT INTO `` (`first_name`,`last_name`,`email`,`country`) VALUES ('TROY','QUIGLEY','TROY.QUIGLEY@sakilacustomer.org','Canada');
