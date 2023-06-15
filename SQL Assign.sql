USE sql_store;

SELECT *
FROM customers;

# Query 1
SELECT *
FROM customers
WHERE customer_ID=1
ORDER BY first_name;

#Query 1 continued
SELECT last_name, first_name, points, points +10
FROM customers;

#Query 2 Select
SELECT last_name, first_name, points, (points *10) +100
FROM customers;

# with new column as discount_factor
SELECT last_name, first_name, points, (points +10) *100 as discount_factor
FROM customers;

# TASK  to show all products with new increased price of 10%, results showing new price and original price
SELECT name, unit_price, (unit_price * 1.1) as new_price
FROM products;

#TASK 3 to find customers with DOB greater than stated value
SELECT customer_id, first_Name, Last_name, birth_date
FROM customers
WHERE birth_date > '1990-01-01';

#Writing own queries
#Using = operator to filter all customers where city is Chicango
SELECT customer_id, first_name, last_name, birth_date, city
FROM customers
WHERE city = 'Chicago';
  
  # using  < operator to find unit price greater than stated value
SELECT product_id, name, unit_price
FROM products
WHERE unit_price < 1;
  
#using IS NOT NULL to filter out empty values
SELECT order_id, customer_id, order_date
FROM orders
WHERE comments IS NOT NULL;

SELECT
FROM 






