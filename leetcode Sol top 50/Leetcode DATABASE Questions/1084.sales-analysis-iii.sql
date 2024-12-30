--
-- @lc app=leetcode id=1084 lang=mysql
--
-- [1084] Sales Analysis III
--

-- @lc code=start
# Write your MySQL query statement below
SELECT 
    p.product_id,
    p.product_name
FROM 
    Product p
WHERE 
    p.product_id IN (
        SELECT 
            product_id
        FROM 
            Sales
        GROUP BY 
            product_id
        HAVING 
            MIN(sale_date) >= '2019-01-01' 
            AND MAX(sale_date) <= '2019-03-31'
    );

-- @lc code=end

