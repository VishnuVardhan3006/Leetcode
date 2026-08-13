# Write your MySQL query statement below
SELECT p.product_id, p.new_price AS price
FROM Products p 
JOIN (
    SELECT
        product_id,
        MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
) x
    ON p.product_id = x.product_id
   AND p.change_date = x.latest_date

UNION ALL

SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16';;