# Task 6 – Sales Trend Analysis Using Aggregations

## Objective:
To analyze monthly revenue and order volume from a sales dataset using SQL.

## Tools Used:
- PostgreSQL
- DB Fiddle (https://www.db-fiddle.com/)

## Steps:
1. Created a mock dataset simulating an `online_sales` table.
2. Used SQL aggregation functions (SUM, COUNT) grouped by year and month.
3. Executed the query on DB Fiddle.

## Output:
- Extracted year and month from `order_date`
- Summed `amount` for monthly revenue
- Counted distinct `order_id` for monthly order volume
