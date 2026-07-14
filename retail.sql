DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city          VARCHAR(50),
    age           INT
);

CREATE TABLE products (
    product_id    INT PRIMARY KEY,
    product_name  VARCHAR(100),
    category      VARCHAR(50),
    price         DECIMAL(10,2),
    stock         INT
);

CREATE TABLE orders (
    order_id      INT PRIMARY KEY,
    customer_id   INT,
    product_id    INT,
    quantity      INT,
    total_amount  DECIMAL(10,2),
    order_date    DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)  REFERENCES products(product_id)
);

-- ---------- CUSTOMERS ----------
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (1, 'James Anderson', 'Dallas', 34);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (2, 'Jennifer Smith', 'Dallas', 27);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (3, 'John Miller', 'Austin', 41);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (4, 'Jessica Brown', 'Austin', 62);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (5, 'Michael Davis', 'Austin', 56);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (6, 'Sarah Wilson', 'Denver', 21);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (7, 'David Martinez', 'Dallas', 24);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (8, 'Julia Garcia', 'Chicago', 33);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (9, 'Robert Taylor', 'Dallas', 54);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (10, 'Jasmine Lee', 'Dallas', 22);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (11, 'William Thomas', 'Denver', 33);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (12, 'Jacob Harris', 'Miami', 56);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (13, 'Linda Clark', 'New York', 19);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (14, 'Joseph Lewis', 'Houston', 63);
INSERT INTO customers (customer_id, customer_name, city, age) VALUES (15, 'Patricia Young', 'Denver', 40);

-- ---------- PRODUCTS ----------
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (1, 'Laptop Pro 15', 'Electronics', 1299.99, 15);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (2, 'Wireless Mouse', 'Electronics', 24.99, 120);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (3, '4K Monitor 27in', 'Electronics', 349.50, 40);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (4, 'Bluetooth Headphones', 'Electronics', 89.99, 75);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (5, 'Smartphone X12', 'Electronics', 899.00, 30);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (6, 'Tablet Air', 'Electronics', 549.00, 18);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (7, 'Mens Running Shoes', 'Sports', 74.99, 60);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (8, 'Yoga Mat', 'Sports', 19.99, 200);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (9, 'Dumbbell Set 20kg', 'Sports', 65.00, 25);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (10, 'Camping Tent', 'Sports', 129.99, 12);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (11, 'Cotton T-Shirt', 'Clothing', 14.99, 300);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (12, 'Denim Jeans', 'Clothing', 39.99, 150);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (13, 'Winter Jacket', 'Clothing', 119.99, 45);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (14, 'Leather Wallet', 'Clothing', 29.99, 90);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (15, 'Non-Stick Frying Pan', 'Home & Kitchen', 34.99, 80);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (16, 'Coffee Maker', 'Home & Kitchen', 59.99, 35);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (17, 'Blender 700W', 'Home & Kitchen', 45.00, 55);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (18, 'Vacuum Cleaner', 'Home & Kitchen', 189.99, 20);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (19, 'Organic Rice 5kg', 'Grocery', 12.49, 500);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES (20, 'Olive Oil 1L', 'Grocery', 9.99, 400);

-- ---------- ORDERS ----------
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (1, 5, 5, 2, 1798.00, '2025-03-28');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (2, 2, 3, 4, 1398.00, '2025-01-25');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (3, 6, 12, 5, 199.95, '2025-03-09');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (4, 13, 2, 4, 99.96, '2025-05-18');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (5, 2, 13, 1, 119.99, '2025-05-22');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (6, 5, 20, 3, 29.97, '2025-05-28');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (7, 4, 3, 1, 349.50, '2025-06-19');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (8, 4, 10, 1, 129.99, '2025-03-01');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (9, 14, 4, 4, 359.96, '2025-03-13');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (10, 8, 12, 2, 79.98, '2025-04-05');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (11, 6, 7, 3, 224.97, '2025-06-29');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (12, 15, 3, 5, 1747.50, '2025-06-12');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (13, 3, 18, 2, 379.98, '2025-02-11');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (14, 8, 13, 3, 359.97, '2025-06-13');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (15, 12, 18, 2, 379.98, '2025-06-25');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (16, 6, 2, 2, 49.98, '2025-01-09');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (17, 13, 11, 4, 59.96, '2025-03-10');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (18, 2, 7, 5, 374.95, '2025-03-22');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (19, 4, 16, 4, 239.96, '2025-06-14');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (20, 8, 5, 3, 2697.00, '2025-02-05');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (21, 4, 18, 5, 949.95, '2025-03-09');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (22, 12, 19, 4, 49.96, '2025-05-30');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (23, 7, 12, 2, 79.98, '2025-02-05');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (24, 9, 16, 1, 59.99, '2025-01-13');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (25, 14, 4, 2, 179.98, '2025-06-10');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (26, 3, 14, 5, 149.95, '2025-01-17');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (27, 7, 13, 5, 599.95, '2025-04-30');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (28, 9, 9, 5, 325.00, '2025-01-03');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (29, 11, 4, 5, 449.95, '2025-03-10');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (30, 13, 11, 1, 14.99, '2025-03-17');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (31, 7, 6, 4, 2196.00, '2025-01-01');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (32, 12, 9, 5, 325.00, '2025-02-15');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (33, 9, 4, 3, 269.97, '2025-06-13');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (34, 9, 20, 2, 19.98, '2025-02-09');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (35, 6, 6, 5, 2745.00, '2025-05-16');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (36, 15, 1, 5, 6499.95, '2025-03-24');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (37, 8, 1, 1, 1299.99, '2025-04-03');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (38, 15, 10, 2, 259.98, '2025-01-15');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (39, 4, 19, 1, 12.49, '2025-01-22');
INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date) VALUES (40, 12, 16, 1, 59.99, '2025-05-17');


-- 1. Display all customers.
SELECT * FROM customers;

-- 2. Display all products.
SELECT * FROM products;

-- 3. Display all orders.
SELECT * FROM orders;

-- 4. Display customer names and cities.
SELECT customer_name, city FROM customers;

-- 5. Display product names and prices.
SELECT product_name, price FROM products;

-- 6. Find all unique cities.
SELECT DISTINCT city FROM customers;

-- 7. Find all unique product categories.
SELECT DISTINCT category FROM products;

-- 8. Customers from Dallas.
SELECT * FROM customers WHERE city = 'Dallas';

-- 9. Customers older than 30.
SELECT * FROM customers WHERE age > 30;

-- 10. Products costing more than $500.
SELECT * FROM products WHERE price > 500;

-- 11. Products with stock less than 20.
SELECT * FROM products WHERE stock < 20;

-- 12. Orders above $1000.
SELECT * FROM orders WHERE total_amount > 1000;

-- 13. Customers from Dallas and age greater than 30.
SELECT * FROM customers WHERE city = 'Dallas' AND age > 30;

-- 14. Customers from Dallas or Austin.
SELECT * FROM customers WHERE city IN ('Dallas', 'Austin');

-- 15. Products belonging to Electronics.
SELECT * FROM products WHERE category = 'Electronics';

-- 16. Orders placed between two dates.
SELECT * FROM orders WHERE order_date BETWEEN '2025-02-01' AND '2025-04-30';

-- 17. Customers whose names start with "J".
SELECT * FROM customers WHERE customer_name LIKE 'J%';

-- 18. Sort customers by age.
SELECT * FROM customers ORDER BY age ASC;

-- 19. Sort products by price.
SELECT * FROM products ORDER BY price ASC;

-- 20. Sort orders by total amount.
SELECT * FROM orders ORDER BY total_amount DESC;

-- 21. Display the top 5 expensive products.
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- 22. Display the top 5 highest-value orders.
SELECT * FROM orders ORDER BY total_amount DESC LIMIT 5;

-- 23. Count total customers.
SELECT COUNT(*) AS total_customers FROM customers;

-- 24. Count total products.
SELECT COUNT(*) AS total_products FROM products;

-- 25. Count total orders.
SELECT COUNT(*) AS total_orders FROM orders;

-- 26. Calculate total sales.
SELECT SUM(total_amount) AS total_sales FROM orders;

-- 27. Calculate average order value.
SELECT AVG(total_amount) AS avg_order_value FROM orders;

-- 28. Find maximum order amount.
SELECT MAX(total_amount) AS max_order_amount FROM orders;

-- 29. Find minimum order amount.
SELECT MIN(total_amount) AS min_order_amount FROM orders;

-- 30. Find average product price.
SELECT AVG(price) AS avg_product_price FROM products;

-- 31. Customer count by city.
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- 32. Product count by category.
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- 33. Total sales by customer.
SELECT c.customer_id, c.customer_name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name;

-- 34. Total sales by product.
SELECT p.product_id, p.product_name, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 35. Total sales by category.
SELECT p.category, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category;

-- 36. Average order value by city.
SELECT c.city, AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city;

-- 37. Maximum order amount by city.
SELECT c.city, MAX(o.total_amount) AS max_order_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city;

-- 38. Total quantity sold by product.
SELECT p.product_id, p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 39. Display customer name and order amount.
SELECT c.customer_name, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id;

-- 40. Display customer name and product purchased.
SELECT c.customer_name, p.product_name
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN products p ON p.product_id = o.product_id;

-- 41. Display customer, product, quantity, and amount.
SELECT c.customer_name, p.product_name, o.quantity, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN products p ON p.product_id = o.product_id;

-- 42. Display customer, city, product, category, and amount.
SELECT c.customer_name, c.city, p.product_name, p.category, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN products p ON p.product_id = o.product_id;

-- 43. Create a complete sales report using all three tables.
SELECT
    o.order_id,
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    o.total_amount,
    o.order_date
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN products p  ON p.product_id  = o.product_id
ORDER BY o.order_id;

-- 44. Find the top 5 customers by total spending.
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 45. Find the top 5 best-selling products (by quantity).
SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

-- 46. Find revenue by city.
SELECT c.city, SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- 47. Find revenue by category.
SELECT p.category, SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 48. Find the customer with the highest single order.
SELECT c.customer_name, o.order_id, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
ORDER BY o.total_amount DESC
LIMIT 1;

-- 49. Find customers who placed more than one order.
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC;

-- 50. Find products that have never been sold.
SELECT p.*
FROM products p
LEFT JOIN orders o ON o.product_id = p.product_id
WHERE o.order_id IS NULL;

-- 51. Find categories generating more than $10,000 in sales.
SELECT p.category, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
HAVING SUM(o.total_amount) > 10000;

-- 52. Find cities generating more than $20,000 in sales.
SELECT c.city, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city
HAVING SUM(o.total_amount) > 20000;

-- 53. Create a "discount" column (10% of price
SELECT product_id, product_name, price, price * 0.10 AS discount
FROM products;

-- 54. Create a "tax" column (5% of total_amount).
SELECT order_id, total_amount, total_amount * 0.05 AS tax
FROM orders;

-- 55. Create a "final_amount" column (total_amount + tax).
SELECT order_id, total_amount,
       total_amount * 0.05 AS tax,
       total_amount + (total_amount * 0.05) AS final_amount
FROM orders;

-- 59. Replace missing city values with "Unknown" (if any NULLs exist).
SELECT customer_id, customer_name, COALESCE(city, 'Unknown') AS city, age
FROM customers;

-- 60. Remove duplicate customer records.
SELECT DISTINCT * FROM customers;

-- 61. Display 5 random orders.
SELECT * FROM orders ORDER BY RAND() LIMIT 5;

-- Final analytics dataset (Customer Name, City, Product Name, Category,
-- Product Price, Quantity, Total Amount, Order Date)
SELECT
    c.customer_name AS "Customer Name",
    c.city           AS "City",
    p.product_name   AS "Product Name",
    p.category       AS "Category",
    p.price          AS "Product Price",
    o.quantity       AS "Quantity",
    o.total_amount   AS "Total Amount",
    o.order_date     AS "Order Date"
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN products p  ON p.product_id  = o.product_id;

-- 1. Who is the highest spending customer?
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;

-- 2. Which city generated the highest revenue?
SELECT c.city, SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY revenue DESC
LIMIT 1;

-- 3. Which category generated the highest sales?
SELECT p.category, SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC
LIMIT 1;

-- 4. Which product sold the most units?
SELECT p.product_name, SUM(o.quantity) AS total_units
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units DESC
LIMIT 1;

-- 5. Which products generated the highest revenue?
SELECT p.product_name, SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- 6. Which customers placed multiple orders?
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC;

-- 7. What is the average order value?
SELECT AVG(total_amount) AS avg_order_value FROM orders;

-- 8. Which products have never been purchased?
SELECT p.*
FROM products p
LEFT JOIN orders o ON o.product_id = p.product_id
WHERE o.order_id IS NULL;

-- 9. Top 10 Customers Report.
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- 10. Top 10 Products Report.
SELECT p.product_name, SUM(o.total_amount) AS revenue, SUM(o.quantity) AS units_sold
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;

-- 11. Revenue by City Report.
SELECT c.city, SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- 12. Revenue by Category Report.
SELECT p.category, SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
