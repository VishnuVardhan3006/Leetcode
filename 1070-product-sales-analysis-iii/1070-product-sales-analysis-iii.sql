# Write your MySQL query statement below
WITH FIRST_YEAR_CAL AS (
    SELECT product_id, MIN(year) as firsst_year
    FROM Sales
    GROUP BY product_id
)
SELECT s.product_id, f.firsst_year AS first_year, s.quantity, s.price
FROM Sales s
JOIN FIRST_YEAR_CAL f
on s.product_id = f.product_id
AND s.year = f.firsst_year
;

;