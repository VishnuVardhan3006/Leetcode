# Write your MySQL query statement below
SELECT query_name, 
round(avg(rating/position), 2) as quality,
round(avg(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100, 2) as poor_query_percentage
FROM Queries
group by query_name;