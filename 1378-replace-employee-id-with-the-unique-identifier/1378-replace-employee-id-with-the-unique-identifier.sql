/* Write your T-SQL query statement below */
-- A LEFT JOIN automatically gives NULL for columns from the right table when there is no matching row.

SELECT
    em.unique_id,
    e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS em
ON em.id = e.id

-- Because the question only asks you to combine information from two tables.

-- name comes from Employees
-- unique_id comes from EmployeeUNI
-- they connect using id

-- So you need JOIN ... ON.

-- You do not need:

-- WHERE → because you are not filtering rows
-- GROUP BY → because you are not grouping
-- HAVING → because there is no aggregate
-- subquery → because you do not need an intermediate result

-- And because you must keep employees even without a match, use LEFT JOIN.