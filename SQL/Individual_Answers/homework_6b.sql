/*
-- Query: SELECT s.first_name, s.last_name, p.staff_id, SUM(p.amount) as total_amount
FROM sakila.payment p
JOIN sakila.staff s
on p.staff_id = s.staff_id
WHERE p.payment_date LIKE '2005-08%'
GROUP BY p.staff_id
LIMIT 0, 1000

-- Date: 2019-03-18 05:28
*/
INSERT INTO `` (`first_name`,`last_name`,`staff_id`,`total_amount`) VALUES ('Mike','Hillyer',1,11853.65);
INSERT INTO `` (`first_name`,`last_name`,`staff_id`,`total_amount`) VALUES ('Jon','Stephens',2,12218.48);
