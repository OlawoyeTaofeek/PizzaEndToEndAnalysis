with cte as (
	SELECT * FROM order_details_2023
	UNION ALL 
	SELECT * FROM order_details_2024
	UNION ALL
	SELECT * FROM order_details_2025)
SELECT COUNT(*) FROM cte;


CREATE TABLE orders AS (
 SELECT * FROM orders_2023
 UNION ALL 
 SELECT * FROM orders_2024
 UNION ALL 
 SELECT * FROM orders_2025
);

SELECT * FROM orders;


CREATE TABLE order_details AS (
 SELECT * FROM order_details_2023
 UNION ALL 
 SELECT * FROM order_details_2024
 UNION ALL 
 SELECT * FROM order_details_2025
);

SELECT * FROM order_details;
