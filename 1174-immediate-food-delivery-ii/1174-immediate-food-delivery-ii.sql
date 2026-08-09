# Write your MySQL query statement below
WITH first_orders AS (
    SELECT customer_id, MIN(order_date) as order_dates
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(AVG(Delivery.order_date = customer_pref_delivery_date)*100,2) as immediate_percentage
FROM Delivery
JOIN first_orders
ON Delivery.customer_id = first_orders.customer_id 
AND Delivery.order_date = first_orders.order_dates