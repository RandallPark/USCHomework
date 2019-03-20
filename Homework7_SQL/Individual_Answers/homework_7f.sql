/*
-- Query: SELECT s.store_id, SUM(p.amount) as total_sales
FROM sakila.payment as p 
JOIN sakila.staff as s USING (staff_id)
GROUP BY s.store_id
LIMIT 0, 1000

-- Date: 2019-03-19 10:13
*/
INSERT INTO `` (`store_id`,`total_sales`) VALUES (1,33489.47);
INSERT INTO `` (`store_id`,`total_sales`) VALUES (2,33927.04);
