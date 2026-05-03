--========================================
-- CREATING schema assignment
--========================================

 CREATE SCHEMA assignment;

set search_path to assignment;

 show search_path;

--===================================================
-- CREATE Customers table in the assignment schema
--====================================================

CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

--====================================================
-- CREATE Products table in the assignment schema
--====================================================

CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

--====================================================
-- CREATE Sales table in the assignment schema
--====================================================

CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

--=============================================================================
-- CREATE Inventory table in the assignment schema
--=============================================================================

CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

--====================================================================================================
-- Inserting data into assignment.Customers table
--====================================================================================================

INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

SELECT * FROM assignment.customers;

--==========================================================================================================
-- Inserting data into assignment.Products table
-- =========================================================================================================

INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

SELECT * FROM assignment.products;

--============================================================================================
-- Inserting data into assignment.Sales table
--============================================================================================

INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

--============================================================================
-- Inserting data into assignment.Inventory table
--============================================================================

INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

--============================================================
-- SELECT all data FROM assignment.Customers table
--============================================================

SELECT * FROM assignment.Customers;

-- SELECT all data FROM assignment.Products table

SELECT * FROM assignment.Products;

-- SELECT all data FROM assignment.Sales table

SELECT * from assignment.Sales;

-- SELECT all data FROM assignment.Inventory table

SELECT * FROM assignment.Inventory;



--=======================================================
------------------------ SOLUTIONS ----------------------
--=======================================================
-- 1. Write a query to SELECT all data FROM the `Customers` table.

SELECT * FROM assignment.Customers;

-- 2. Write a query to SELECT the total number of products FROM the `Products` table.

SELECT 
	COUNT(*) Total_Products
FROM Products;

-- 3. Write a query to SELECT the product name and its price FROM the `Products` table WHERE the price is greater than 500.

SELECT 
	product_name,
	price 
FROM Products 
WHERE price > 500;

-- 4. Write a query to find the average price of all products FROM the `Products` table.

SELECT
	AVG(price) as avg_price
FROM Products;

-- 5. Write a query to find the total sales amount across all records FROM the `Sales` table.

SELECT 
	SUM(total_amount) as total_sales_amount
FROM Sales;

-- 6. Write a query to SELECT distinct membership statuses FROM the `Customers` table.

SELECT 
	distinct membership_status as members_status
FROM Customers;

-- 7. Write a query to CONCATenate first and last names of all customers and show the result as `full_name`.

SELECT 
	CONCAT(first_name, ' ',  last_name) as full_name
FROM Customers;

-- 8. Write a query to find all products in the `Products` table WHERE the category is 'Electronics'.

SELECT *
FROM Products
WHERE category = 'Electronics';

-- 9. Write a query to find the highest price FROM the `Products` table.

SELECT 
	max(price) as highest_price
FROM Products;

-- 10. Write a query to COUNT the number of sales for each product FROM the `Sales` table.

SELECT
	product_id,
	COUNT(*) as sales_count
FROM Sales
GROUP BY product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.

SELECT 
	product_id,
 	SUM(quantity_sold) AS total_quantity
FROM Sales
GROUP BY product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.

SELECT 
	MIN(price) AS minimum_price
FROM Products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	p.price
FROM Customers c
INNER JOIN Sales s
ON c.customer_id = s.customer_id
INNER JOIN Products p
ON s.product_id = p.product_id
WHERE PRICE > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product

SELECT 
	s.total_amount,
	p.product_name 
FROM sales s
JOIN Products p
ON s.product_id = p.product_id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.

SELECT 
	c.customer_id,
	s.total_amount
FROM Customers c
INNER JOIN Sales s
ON c.customer_id = s.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.

SELECT 
	c.first_name,
	c.last_name,
	p.product_name,
	s.quantity_sold
FROM Customers c
INNER JOIN Sales s
ON c.customer_id = s.customer_id 
INNER JOIN Products p
ON s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT 
	c1.customer_id AS CustomerID1,
	c1.first_name AS FirstName1,
	c1.last_name AS LastName1,
	c2.customer_id AS CustomerID2,
	c2.first_name AS FirstName2,
	c2.last_name AS LastName2,
	c1.membership_status AS MemberStatus1
FROM Customers c1
JOIN Customers c2
ON c1.membership_status = c2.membership_status
AND c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.

SELECT 
	p.product_id,
	p.product_name,
	COUNT(s.sale_id) AS total_sales
FROM Products p
JOIN Sales s
ON p.product_id = s.product_id 
GROUP BY p.product_id, p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.

SELECT 
	product_id,
	product_name
FROM Products 
WHERE stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.

SELECT 
	p.product_id,
	p.product_name,
	s.quantity_sold
FROM Products p
JOIN Sales s
ON p.product_id = s.product_id 
WHERE quantity_sold > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	p.category 
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id 
JOIN Products p
ON s.product_id = p.product_id 
WHERE p.category IN ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.

SELECT 
	p.product_id,
	p.product_name,
	SUM(s.quantity_sold * p.price) AS total_sales 
FROM Sales s
JOIN Products p
ON s.product_id = p.product_id 
GROUP BY p.product_id, p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.sale_date
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id 
WHERE s.sale_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 24. Write a query to find the customers with the highest total sales in 2023.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.sale_date,
	SUM(s.total_amount) AS total_sales
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.customer_id, s.sale_date
ORDER BY total_sales DESC
--LIMIT 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.

SELECT 
	p.product_id,
	p.product_name,
	p.price
FROM Products p
JOIN Sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.price
ORDER BY p.price DESC
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.

SELECT 
	COUNT(DISTINCT c.customer_id) AS total_customers
FROM Customers c
JOIN Sales s
ON c.customer_id =s.customer_id 
WHERE s.total_amount > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT 
	COUNT(s.sale_id) AS total_sales
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id 
JOIN Products p
ON s.product_id = p.product_id 
WHERE membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).

SELECT 
	p.product_name
FROM Products p
JOIN Inventory i
ON p.product_id = i.product_id 
WHERE i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	SUM(s.quantity_sold)
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.quantity_sold) > 5;

-- 30. Write a query to find the average quantity sold per product.

SELECT 
	p.product_id,
	p.product_name,
	AVG(s.quantity_sold) AS avg_quantity_sold
FROM Products p
JOIN Sales s
ON p.product_id =  s.product_id 
GROUP BY p.product_id, p.product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.

SELECT 
	COUNT(sale_id) AS number_sales
FROM Sales
WHERE sale_date BETWEEN '2023-12-01' AND '2023-12-31';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.

SELECT 
	customer_id,
	SUM(total_amount) AS amount_spent
FROM sales
GROUP BY customer_id
ORDER BY customer_id DESC;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.

SELECT 
	product_id,
	product_name,
	stock_quantity
FROM products
WHERE stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.

SELECT 
	p.product_id,
	p.product_name,
	s.sale_id,
	COUNT(s.sale_id) AS total_sales
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, s.sale_id, p.product_name 
ORDER BY p.product_id, p.product_name, s.sale_id DESC;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.

SELECT 
	DISTINCT 
	c.customer_id,
	c.registration_date,
	s.sale_date
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date
AND c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.

SELECT 
	p.product_id,
	p.product_name,
	p.price
FROM products p 
JOIN sales s
ON p.product_id = s.product_id
WHERE price BETWEEN 100 AND 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.

SELECT 
	customer_id,
	-- quantity_sold,
	COUNT(*) AS total_sales
FROM sales
GROUP BY customer_id 
ORDER BY total_sales DESC;

-- 38. Write a query to find the total quantity of products sold per customer.

SELECT 
	customer_id,
	SUM(quantity_sold) AS total_quantity
FROM sales 
GROUP BY customer_id
ORDER BY total_quantity DESC;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.

SELECT 
	MAX(stock_quantity) highest_stock,
	MIN(stock_quantity) lowest_stock
FROM Inventory;

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.

SELECT 
	 p.product_id,
	 p.product_name,
	 s.total_amount AS total_sales
FROM products p
JOIN sales s
ON p.product_id = s.product_id
WHERE product_name LIKE '%phone%'
GROUP BY p.product_id, p.product_name, s.total_amount;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.

SELECT 
	c.customer_id,
	--c.first_name,
	--c.last_name,
	c.membership_status,
	s.total_amount AS total_sales,
	p.product_name
FROM customers c
INNER JOIN sales s
ON c.customer_id = s.customer_id
INNER JOIN products p
ON s.product_id = p.product_id 
WHERE membership_status = 'Gold'
GROUP BY c.customer_id, c.membership_status, s.total_amount, p.product_name;

-- 42. Write a query to find the total sales of products by category.

SELECT 
	p.category,
	sum(s.total_amount) AS total_sales
FROM products p
JOIN sales s
ON p.product_id = s.product_id 
GROUP BY p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.

SELECT 
	p.product_id,
	p.product_name,
	s.total_amount AS total_sales,
	EXTRACT(MONTH FROM s.sale_date) AS month, 
	EXTRACT(YEAR FROM s.sale_date) AS year
FROM products p 
JOIN sales s
ON p.product_id = s.product_id 
GROUP BY p.product_id, p.product_name, s.total_amount, month, year;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.

SELECT 
	s.product_id,
	i.stock_quantity
FROM sales s 
JOIN Inventory i 
ON s.product_id = i.product_id 
WHERE i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.

SELECT 
	customer_id,
	quantity_sold
FROM sales 
GROUP BY customer_id, quantity_sold
ORDER BY quantity_sold DESC 
LIMIT 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.

SELECT 
	DISTINCT 
	product_id,
	sale_date 
FROM sales 
WHERE sale_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 47. Write a query to find the products that have not been sold in the last 6 months.

SELECT 
	p.product_id,
	p.product_name
FROM products p 
LEFT JOIN sales s
	ON p.product_id = s.product_id 
	AND s.sale_date >= s.sale_date - INTERVAL '6 months'
WHERE s.product_id IS NULL;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.

SELECT 
	p.product_id,
	p.product_name,
	p.price,
	SUM(s.quantity_sold) AS total_quantity
FROM products p 
JOIN sales s 
ON p.product_id = s.product_id 
WHERE price BETWEEN 200 AND 800
GROUP BY p.product_id, p.product_name, p.price
ORDER BY total_quantity;

-- 49. Write a query to find the customers who spent the most money in the year 2023.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.sale_date,
	s.total_amount AS total_spent
FROM customers c 
JOIN sales s 
ON c.customer_id = s.customer_id 
WHERE sale_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.customer_id, c.first_name, c.last_name, s.total_amount, s.sale_date
ORDER BY total_spent DESC;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.

SELECT 
	p.product_id,
	p.product_name,
	count(*) times_sold
FROM products p 
JOIN sales s
ON p.product_id = s.product_id 
WHERE  p.price > 200
GROUP BY p.product_id, p.product_name 
HAVING COUNT(*) > 100
ORDER BY times_sold;

-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.total_amount
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
WHERE total_amount >
(
	SELECT 
	AVG(total_amount)
	FROM sales
);

-- 52. Which products are priced higher than the average price of all products?

SELECT 
	product_id,
	product_name,
	price 
FROM products 
WHERE price >
(
	SELECT 
	AVG(price)
	FROM products
);

-- 53. Which customers have never made a purchase?

SELECT 
	customer_id,
	first_name,
	last_name
FROM customers 
WHERE customer_id NOT IN 
(
	SELECT 
	customer_id
	FROM sales 
);

-- 54. Which products have never been sold?

SELECT 
	product_id,
	product_name
FROM products 
WHERE product_id NOT IN 
(
	SELECT 
	product_id 
	FROM sales 
);

-- 55. Which customer made the single most expensive purchase (total amount)?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	t.total_spent
FROM customers c
JOIN
	(
		SELECT
		customer_id,
		SUM(total_amount) AS total_spent
		FROM sales
		GROUP BY customer_id 
	)t
	ON c.customer_id = t.customer_id 
	WHERE total_spent = (
	SELECT
	MAX(total_spent)
	FROM 
		(
		SELECT
		customer_id,
		SUM(total_amount) AS total_spent
		FROM sales
		GROUP BY customer_id 
		)k
);

-- 56. Which products have total sales greater than the average total sales across all products?

SELECT 
	product_id,
	total_sales
FROM (
	SELECT 
		product_id,
		SUM(total_amount) AS total_sales 
	FROM sales 
	GROUP BY product_id
	)p
WHERE total_sales > (
	SELECT
		AVG(total_sales)
	FROM (
			SELECT 
		product_id,
		SUM(total_amount) AS total_sales 
	FROM sales 
	GROUP BY product_id
			)a 
	);

-- 57. Which customers registered earlier than the average registration date?

SELECT 
	customer_id,
	first_name,
	last_name
FROM customers 
WHERE registration_date < (
SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE 
FROM customers
	);

-- 58. Which products have a price higher than the average price within their own category?

SELECT 
	product_id,
	product_name,
	price,
	category
FROM products p
WHERE price > (
	SELECT 
	AVG(price)
	FROM products
	WHERE category = p.category
	);

-- 59. Which customers have spent more than the customer with ID = 10?

SELECT 
	customer_id,
	SUM(total_amount) AS total_spent
FROM sales 
GROUP BY customer_id 
HAVING SUM(total_amount) > (
	SELECT 
	SUM(total_amount)
	FROM sales 
	WHERE customer_id = 10
);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?

SELECT 
	product_id,
	SUM(quantity_sold) AS total_quantity
FROM sales 
GROUP BY product_id 
HAVING SUM(quantity_sold) > (
SELECT 
	AVG(total_quantity)
FROM (
	SELECT 
	product_id,
	SUM(quantity_sold) AS total_quantity
	FROM sales 
	GROUP BY product_id 
	)t
);


--=========================================================
-- COMMON TABLE EXPRESSIONS (CTEs) Questions and Answers
--=========================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     Then determine which customers are the top 5 highest spenders.

WITH customer_spending AS (
SELECT 
	customer_id,
	SUM(total_amount) AS total_spent
FROM sales 
GROUP BY customer_id 
)
SELECT  
	customer_id,
	total_spent
FROM customer_spending 
ORDER BY total_spent DESC 
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     Then determine which products are the top 3 most sold.

WITH product_quantity AS (
	SELECT 
		product_id,
		SUM(quantity_sold) AS total_quantity
	FROM sales
	GROUP BY product_id
	)
SELECT 
	product_id,
	total_quantity 
FROM product_quantity 
ORDER BY total_quantity DESC 
LIMIT 3;

-- 63. Create an intermediate result showing total sales per product category,
--     Then determine which category generates the highest revenue.

WITH total_category AS (
	SELECT 
		p.category,
		SUM(s.total_amount) AS total_revenue
	FROM sales s
	JOIN products p
	ON s.product_id = p.product_id
	GROUP BY p.category 
)
SELECT 
	category,
	total_revenue
FROM total_category
ORDER BY total_revenue DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     Then identify customers who purchased more than twice.

WITH number_purchases AS (
	SELECT 
		customer_id,
		COUNT(*) AS no_of_purchases
	FROM sales  
	GROUP BY customer_id
)
SELECT 
	customer_id,
	no_of_purchases
FROM number_purchases 
WHERE no_of_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     Then determine which products sold more than the average quantity sold.

WITH products_sold AS (
	SELECT 
		p.product_id,
		p.product_name,
		SUM(s.total_amount) AS total_quantity
	FROM products p 
	JOIN sales s 
	ON p.product_id = s.product_id 
	GROUP BY p.product_id, p.product_name 
)
SELECT 
	product_id,
	product_name,
	total_quantity
FROM products_sold 
WHERE total_quantity > (
	SELECT 
		AVG(total_quantity) AS avg_quantity
	FROM products_sold
);

-- 66. Create an intermediate result that calculates total spending per customer,
-- Then determine which customers spent more than the average spending.

WITH customer_total AS (
	SELECT
		c.customer_id,
		c.first_name,
		c.last_name,
		SUM(s.total_amount) AS spent_amount
	FROM customers c
	JOIN sales s
	ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT 
	customer_id,
	first_name,
	last_name
FROM customer_total 
WHERE spent_amount > (
	SELECT 
		avg(spent_amount) AS avg_amount
	FROM customer_total
);

-- 67. Create an intermediate result that calculates total revenue per product,
-- Then list the products ordered from highest revenue to lowest.

WITH product_revenue AS (
	SELECT 
		p.product_id,
		p.product_name,
		SUM(s.total_amount) AS total_revenue
	FROM products p
	JOIN sales s
	ON p.product_id = s.product_id
	GROUP BY p.product_id, p.product_name
)
SELECT 
	*
FROM product_revenue 
ORDER BY total_revenue DESC;

-- 68. Create an intermediate result showing monthly sales totals,
-- Then determine which month had the highest revenue.

WITH monthly_sales AS (
	SELECT 
		EXTRACT(MONTH FROM  sale_date) AS month,
		SUM(total_amount) AS total_revenue
	FROM sales
	GROUP BY month, sale_date
)
SELECT 
	month,
	total_revenue 
FROM monthly_sales
ORDER BY total_revenue DESC
LIMIT 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
-- Then determine which products were purchased by more than three customers.

WITH customer_product AS (
	SELECT 
		product_id,
		COUNT(DISTINCT customer_id) AS customer_count
	FROM sales 
	GROUP BY product_id 
)
SELECT 
	product_id,
	customer_count
FROM customer_product
WHERE customer_count > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
-- Then identify products that sold less than the average quantity sold.

WITH total_products AS (
	SELECT 
		p.product_id,
		p.product_name,
		SUM(s.quantity_sold) AS total_quantity
	FROM products p
	JOIN sales s 
	ON p.product_id = s.product_id 
	GROUP BY p.product_id, p.product_name 
)
SELECT *
FROM total_products
WHERE total_quantity < (
	SELECT 
		AVG(total_quantity)
	FROM total_products 
);

--==============================================================================
-- WINDOW FUNCTION QUESTIONS AND ANSWERS
--==============================================================================

-- 71. Rank customers based on the total amount they have spent.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	sum(s.total_amount) AS total_spent,
	RANK() OVER(ORDER BY sum(s.total_amount) DESC) AS customer_rank
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY customer_Rank;

-- 72. Rank products based on total quantity sold.

SELECT 
	product_id,
	product_name,
	stock_quantity,
	RANK() OVER(ORDER BY stock_quantity DESC) AS stock_rank
FROM products;

-- 73. Identify the 3rd highest spending customer.

WITH customer_spending AS 
(SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	SUM(s.total_amount) AS total_spent,
	RANK() OVER(ORDER BY SUM(s.total_amount) DESC) AS customer_rank
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name)
SELECT *
FROM customer_spending 
WHERE customer_rank = 3;

-- 74. Identify the 2nd most expensive product.

WITH products_cost AS (
	SELECT 
		product_id,
		product_name,
		price,
		RANK() OVER(ORDER BY price DESC) AS cost_rank
	FROM products 
	ORDER BY cost_rank
)
SELECT * 
FROM products_cost 
WHERE cost_rank = 2;

-- 75. Show the ranking of products within each category based on price.

SELECT 
	category,
	price,
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS price_rank
FROM products
ORDER BY category, price_rank;

-- 76. Show the ranking of customers based on the number of purchases they made.
	
SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.quantity_sold,
	DENSE_RANK() OVER( ORDER BY s.quantity_sold DESC) AS quantity_rank
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id 
ORDER BY quantity_rank;

-- 77. Show the running total of sales amounts ordered by sale_date.

SELECT 
	sale_id,
	sale_date,
	total_amount,
	SUM(total_amount) OVER(ORDER BY sale_date)
FROM sales 
ORDER BY sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.

SELECT 
	sale_id,
	sale_date,
	total_amount AS sales_amount,
	COALESCE(LAG(total_amount) OVER(ORDER BY sale_date), 0) AS prev_sales
FROM sales 
ORDER BY  sale_date;

-- 79. Show the next sale amount for each sale ordered by sale_date.

SELECT 
	sale_id,
	sale_date,
	total_amount AS sales_amount,
	COALESCE(LEAD(total_amount) OVER(ORDER BY sale_date), 0) AS next_sales
FROM sales 
ORDER BY  sale_date;

-- 80. Divide customers into 4 groups based on total spending.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.total_amount,
	NTILE(4) OVER (ORDER BY s.total_amount DESC) AS spending_grp
FROM customers c 
JOIN sales s 
ON c.customer_id = s.customer_id 
ORDER BY spending_grp;


--===========================================
------------------More Analystics ----------
--===========================================

-- 81. Which customers bought products in more than one category?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	p.category,
	COUNT(DISTINCT p.category) AS dist_count
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id 
JOIN products p 
ON s.product_id = p.product_id 
GROUP BY c.customer_id, c.first_name, c.last_name, p.category 
HAVING COUNT(DISTINCT p.category) > 1 
ORDER BY dist_count;

-- 82. Which customers purchased products within 7 days of registering?

SELECT 
	 c.customer_id,
	 c.first_name,
	 c.last_name,
	 c.registration_date,
	 s.sale_date
FROM customers c 
JOIN sales s 
ON c.customer_id = s.customer_id 
WHERE c.registration_date <= c.registration_date + INTERVAL '7 Days'
AND s.sale_date >= c.registration_date 
ORDER BY customer_id;

-- 83. Which products have lower stock remaining than the average stock quantity?

SELECT 
	product_id,
	product_name,
	stock_quantity
FROM products 
WHERE stock_quantity < (
	SELECT 
	AVG(stock_quantity) AS avg_stock 
	FROM products
)
ORDER BY stock_quantity;

-- 84. Which customers purchased the same product more than once?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	p.product_id,
	p.product_name,
	COUNT(*) AS product_purchased
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, p.product_id, p.product_name
HAVING COUNT(*) > 1
ORDER BY product_purchased;

-- 85. Which product categories generated the highest total revenue?

SELECT 
    p.category,
    SUM(s.total_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS revenue_rank
FROM sales s
JOIN products p 
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 86. Which products are among the top 3 most sold products?

SELECT 
	p.product_id,
	p.product_name,
	COUNT(*) AS product_sold
FROM sales s
JOIN products p 
ON s.product_id = p.product_id 
GROUP BY p.product_id, p.product_name 
ORDER BY product_sold DESC;

-- 87. Which customers purchased the most expensive product?

SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    p.price
FROM sales s
JOIN customers c 
    ON s.customer_id = c.customer_id
JOIN products p 
    ON s.product_id = p.product_id
WHERE p.price = (SELECT MAX(price) FROM products)
ORDER BY c.customer_id;

-- 88. Which products were purchased by the highest number of unique customers?

SELECT 
	p.product_id,
	p.product_name,
	COUNT(s.customer_id) AS unique_customer
FROM sales s 
JOIN products p
ON s.product_id = p.product_id 
GROUP BY p.product_id, p.product_name 
ORDER BY unique_customer DESC;

-- 89. Which customers made purchases above the average sale amount?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.total_amount 
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id 
WHERE total_amount > (
SELECT 
	AVG(total_amount) AS avg_revenue
FROM sales);

-- 90. Which customers purchased more products than the average quantity purchased per customer?

WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(quantity_sold) AS total_quantity
    FROM sales
    GROUP BY customer_id
),
average_quantity AS (
    SELECT AVG(total_quantity) AS avg_quantity
    FROM customer_totals
)
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    ct.total_quantity
FROM customer_totals ct
JOIN customers c 
    ON ct.customer_id = c.customer_id
CROSS JOIN average_quantity aq
WHERE ct.total_quantity > aq.avg_quantity
ORDER BY ct.total_quantity DESC;

-- 91. Which customers rank in the top 10% of spending?

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	s.total_amount,
	RANK() OVER( ORDER BY s.total_amount DESC) AS spending_rank
FROM customers c 
JOIN sales s 
ON c.customer_id = s.customer_id 
ORDER BY spending_rank
LIMIT 10;

-- 92. Which products contribute to the top 50% of total revenue?

WITH product_revenue AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(total_amount) AS revenue
    FROM sales s
    JOIN products p 
        ON s.product_id = p.product_id
    GROUP BY p.product_id, p.product_name
),
revenue_ranked AS (
    SELECT 
        product_id,
        product_name,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM product_revenue
)
SELECT 
    product_id,
    product_name,
    revenue,
    cumulative_revenue,
    total_revenue
FROM revenue_ranked
WHERE cumulative_revenue <= total_revenue * 0.5
ORDER BY revenue DESC;

-- 93. Which customers made purchases in consecutive months?

WITH customer_months AS (
    SELECT DISTINCT
        customer_id,
        DATE_TRUNC('month', sale_date) AS sale_month
    FROM sales
),
month_comparison AS (
    SELECT
        customer_id,
        sale_month,
        LAG(sale_month) OVER (
            PARTITION BY customer_id
            ORDER BY sale_month
        ) AS prev_month
    FROM customer_months
)
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name
FROM month_comparison mc
JOIN customers c
    ON mc.customer_id = c.customer_id
WHERE sale_month = prev_month + INTERVAL '1 month'
ORDER BY c.customer_id;

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

SELECT 
    p.product_id,
    p.product_name,
    p.stock_quantity,
    COALESCE(SUM(s.quantity_sold), 0) AS total_sold,
    ABS(p.stock_quantity - COALESCE(SUM(s.quantity_sold), 0)) AS quantity_diff
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
GROUP BY 
    p.product_id,
    p.product_name,
    p.stock_quantity
ORDER BY quantity_diff DESC
LIMIT 1;

-- 95. Which customers have spending above the average spending of their membership tier?

WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s
        ON c.customer_id = s.customer_id
    GROUP BY 
        c.customer_id,
        c.first_name,
        c.membership_status),
tier_comparison AS (
    SELECT 
        *,
        AVG(total_spent) OVER (
            PARTITION BY membership_status
        ) AS tier_avg_spending
    FROM customer_spending
)
SELECT *
FROM tier_comparison
WHERE total_spent > tier_avg_spending
ORDER BY membership_status, total_spent DESC;

-- 96. Which products have higher sales than the average sales within their category?

WITH product_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        COALESCE(SUM(s.quantity_sold), 0) AS total_sales
    FROM products p
    LEFT JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY 
        p.product_id,
        p.product_name,
        p.category
)
SELECT *
FROM (
    SELECT 
        ps.*,
        AVG(total_sales) OVER (
            PARTITION BY category
        ) AS category_avg
    FROM product_sales ps
) ranked
WHERE total_sales > category_avg
ORDER BY category, total_sales DESC;

-- 97. Which customer made the largest single purchase relative to their total spending?

WITH customer_stats AS (
    SELECT 
        customer_id,
        MAX(total_amount) AS largest_purchase,
        SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
)
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    cs.largest_purchase,
    cs.total_spent,
    ROUND(
        cs.largest_purchase * 100.0 / cs.total_spent,
        2
    ) AS purchase_percentage
FROM customer_stats cs
JOIN customers c
    ON cs.customer_id = c.customer_id
ORDER BY purchase_percentage DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?c

WITH product_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        COALESCE(SUM(s.quantity_sold), 0) AS total_sold
    FROM products p
    LEFT JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY 
        p.product_id,
        p.product_name,
        p.category
),
ranked_products AS (
    SELECT 
        *,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY total_sold DESC
        ) AS sales_rank
    FROM product_sales
)
SELECT 
    product_id,
    product_name,
    category,
    total_sold,
    sales_rank
FROM ranked_products
WHERE sales_rank <= 3
ORDER BY category, sales_rank;

-- 99. Which customers are tied for the highest total spending?

WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s
        ON c.customer_id = s.customer_id
    GROUP BY 
        c.customer_id,
        c.first_name,
        c.last_name
),
ranked_customers AS (
    SELECT 
        *,
        RANK() OVER (
            ORDER BY total_spent DESC
        ) AS spending_rank
    FROM customer_spending
)
SELECT 
    customer_id,
    first_name,
    last_name,
    total_spent
FROM ranked_customers
WHERE spending_rank = 1;

-- 100. Which products generated sales every year present in the dataset?

WITH total_years AS (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) AS year_count
    FROM sales
),
product_years AS (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(DISTINCT EXTRACT(YEAR FROM s.sale_date)) AS active_years
    FROM products p
    JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY 
        p.product_id,
        p.product_name
)
SELECT 
    py.product_id,
    py.product_name
FROM product_years py
CROSS JOIN total_years ty
WHERE py.active_years = ty.year_count
ORDER BY py.product_name;




/*
SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Sales;
SELECT * FROM Inventory;
*/





