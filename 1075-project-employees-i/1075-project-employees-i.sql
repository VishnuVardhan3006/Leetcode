# Write your MySQL query statement below
SELECT project_id, round(AVG(e.experience_years),2) as average_years
FROM Project p
JOIN Employee e
ON e.employee_id = p.employee_id
GROUP BY P.PROJECT_ID;