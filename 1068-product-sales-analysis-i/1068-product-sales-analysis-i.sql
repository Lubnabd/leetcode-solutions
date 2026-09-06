/* Write your T-SQL query statement below */
-- ACED THIS ONE // BTW if there is ON it doesnt nesseraly mean whats inside ON should be inside SELECT
SELECT
    p.product_name,
    s.year,
    s.price
FROM Sales AS s
LEFT JOIN Product AS p
ON s.product_id = p.product_id