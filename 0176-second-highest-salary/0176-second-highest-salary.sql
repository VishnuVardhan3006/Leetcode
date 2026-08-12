# Write your MySQL query statement below
SELECT MAX(SALARY) AS SecondHighestSalary
FROM (
    SELECT Salary,
        DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk
    FROM Employee
) t
WHERE rnk = 2;
