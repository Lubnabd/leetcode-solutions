/* Write your T-SQL query statement below */
-- You need all visits, including visits with no transaction → LEFT JOIN
-- You only want visits where no matching transaction exists → WHERE t.transaction_id IS NULL
-- You want the number of those visits per customer → GROUP BY customer_id + COUNT(*)

SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans -- I dont know why * instead of t.transaction_id here ??
FROM Visits AS v
LEFT JOIN Transactions AS t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
