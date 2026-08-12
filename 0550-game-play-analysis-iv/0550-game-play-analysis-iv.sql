# Write your MySQL query statement below
WITH FIRST_LOG_DAY AS (
    SELECT player_id, MIN(event_date) as first_day_log
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(*) FROM FIRST_LOG_DAY) ,2) AS fraction
FROM Activity a
JOIN FIRST_LOG_DAY f
ON a.player_id = f.player_id
AND a.event_date = DATE_ADD(f.first_day_log, INTERVAL 1 DAY)