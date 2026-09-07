/* Write your T-SQL query statement below */
-- you need to repeat this one!
SELECT
    w1.id
FROM Weather AS w1
INNER JOIN Weather AS w2
    ON w1.recordDate = DATEADD(day, 1, w2.recordDate)
WHERE w1.temperature > w2.temperature;