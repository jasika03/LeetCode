# Write your MySQL query statement below
SELECT Name AS Customers From Customers
Where id not in (Select customerId from Orders)