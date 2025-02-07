SELECT 
    product_id,
    year as first_year,
    quantity,
    price
FROM Sales s1
WHERE year = (
    SELECT MIN(year)
    FROM Sales s2 
    WHERE s2.product_id = s1.product_id
)