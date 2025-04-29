
-- Task 6 – Sales Trend Analysis Using Aggregations

-- Step 1: Create the online_sales table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    product_id INT,
    amount NUMERIC(10,2)
);

-- Step 2: Insert sample data
INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(12832, '2022-04-13', 56, 328.88),
(12824, '2023-03-12', 36, 438.37),
(11994, '2022-09-28', 84, 10.09),
(13490, '2022-04-17', 68, 92.85),
(19310, '2022-03-13', 7, 200.98),
(11234, '2023-05-02', 15, 315.55),
(14678, '2022-12-01', 49, 122.45),
(15896, '2023-07-19', 22, 298.10),
(11785, '2023-11-23', 33, 400.00),
(12145, '2022-01-10', 81, 275.65);

-- Step 3: Perform monthly aggregation
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM 
  online_sales
GROUP BY 
  EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
  year, month;
