SELECT product_id, YEAR AS first_year, quantity, price 
FROM sales WHERE (product_id, YEAR) IN (
    SELECT product_id, min(YEAR)
    FROM sales
    GROUP BY product_id
)