SELECT c.id AS customer_id, c.name, c.email, c.location, COUNT(orders.id) AS num_orders
FROM customers c
LEFT JOIN orders ON c.id = orders.customer_id
GROUP BY c.id
ORDER BY num_orders DESC;