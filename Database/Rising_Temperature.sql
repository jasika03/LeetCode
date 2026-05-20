# Write your MySQL query statement below
Select today.id 
FROM Weather AS yesterday
CROSS JOIN Weather AS today
WHERE DATEDIFF(today.recordDate, yesterday.recordDate)= 1
AND today.temperature>yesterday.temperature;