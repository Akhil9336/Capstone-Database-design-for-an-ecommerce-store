SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

USE hariomshop;
-- SELECT SUM(price) AS total_revenue FROM products;

-- SELECT p.product_name , SUM(oi.quantity * p.price) AS revenue
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id
-- Join orders o ON oi.order_id = o.order_id
-- WHERE o.order_status = "Delivered"
-- GROUP BY p.product_name
-- ORDER BY revenue DESC;

-- SELECT
--     c.customer_id,
--     c.name,
--     SUM(oi.quantity) AS total_products,
--     ROUND(SUM(oi.quantity * p.price),2) AS total_spend
-- FROM customers c
-- JOIN orders o
--     ON c.customer_id = o.customer_id
-- JOIN order_items oi
--     ON o.order_id = oi.order_id
-- JOIN products p
--     ON oi.product_id = p.product_id
-- WHERE o.order_status = 'Delivered'
-- GROUP BY c.customer_id, c.name
-- ORDER BY total_spend DESC;

SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

