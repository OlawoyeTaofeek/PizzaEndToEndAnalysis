SELECT * FROM orders;

-- Check for duplicate

SELECT COUNT(distinct order_id)
from ORDERS;

SELECT order_id, COUNT(order_id) 
from ORDERS
GROUP BY order_id
HAVING COUNT(order_id) > 1;

SELECT order_id
from ORDERS
GROUP BY order_id
HAVING COUNT(order_id) > 1;

SELECT * FROM ORDERS
WHERE order_id = 1;

DELETE FROM orders 
WHERE order_id = 1 and order_date = '2023-05-31';

SELECT *
FROM orders where order_id IS NOT null 
AND order_date IS NOT null AND order_time IS NOT null;

SELECT * 
FROM order_details;

SELECT * FROM pizzas;

SELECT * FROm pizza_types;

-- The most ordered pizza type
SELECT pt.name, SUM(od.quantity) as total_orders
FROM pizza_types as pt  
left JOIN pizzas as p 
on p.pizza_type_id = pt.pizza_type_id
LEFT JOIN order_details as od
ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY total_orders DESC;


SELECT SUM(quantity)
from ORDER_DETAILS;

SELECT 

