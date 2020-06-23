--Tasks

--1Get all customers and their addresses.
SELECT * FROM addresses, customers;
--2Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders, line_items;
--3Which warehouses have cheetos?
SELECT *
FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON products.id = warehouse_product.product_id
WHERE description='cheetos';
--4Which warehouses have diet pepsi?
SELECT *
FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON products.id = warehouse_product.product_id
WHERE description='diet pepsi';
--5Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT *
FROM orders JOIN addresses ON orders.address_id = addresses.id JOIN customers ON customers.id = addresses.customer_id;
--6How many customers do we have?
SELECT count(*)
FROM customers;
--7How many products do we carry?
SELECT count(*)
FROM products;
--8What is the total available on-hand quantity of diet pepsi?
SELECT "description", SUM("on_hand")
FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id
WHERE description='diet pepsi'
GROUP BY description;
--Stretch
--9How much was the total cost for each order?

--10How much has each customer spent in total?

--11How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).