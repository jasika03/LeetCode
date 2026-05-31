# Write your MySQL query statement below
SELECT e.employee_id,e.name,
COUNT(e.employee_id) AS reports_count,
ROUND(AVG(m.age),0) AS average_age
FROM Employees e
JOIN Employees m
ON e.employee_id=m.reports_to
GROUP BY m.reports_to
ORDER BY employee_id
