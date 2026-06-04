# Write your MySQL query statement below
SELECT p.product_name,SUM(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
USING (product_id)
WHERE month(order_date) = 2 AND year(order_date) = 2020
GROUP BY product_id
HAVING SUM(o.unit)>=100