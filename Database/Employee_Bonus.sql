# Write your MySQL query statement below
SELECT name, bonus 
FROM Employee
LEFT JOIN Bonus
USING(empId)
WHERE Bonus<1000 OR Bonus IS NULL 
