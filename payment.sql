-- QUESTION 1: Total payments by date (top 5 latest)
SELECT 
    payment_date,
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    payment_date
ORDER BY 
    payment_date DESC
LIMIT 5;

-- QUESTION 2: Average credit limit by customer and country
SELECT 
    customer_name,
    country,
    AVG(credit_limit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customer_name, country;

-- QUESTION 3: Total price of ordered products
SELECT 
    product_code,
    quantity_ordered,
    SUM(price_each * quantity_ordered) AS total_price
FROM 
    orderdetails
GROUP BY 
    product_code, quantity_ordered;

-- QUESTION 4: Highest payment amount by check number
SELECT 
    check_number,
    MAX(amount) AS highest_amount
FROM 
    payments
GROUP BY 
    check_number;