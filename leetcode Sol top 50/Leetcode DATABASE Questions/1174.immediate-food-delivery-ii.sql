--
-- @lc app=leetcode id=1174 lang=mysql
--
-- [1174] Immediate Food Delivery II
--

-- @lc code=start
# Write your MySQL query statement below
WITH FirstOrders AS (
    SELECT 
        customer_id,
        order_date,
        customer_pref_delivery_date,
        RANK() OVER (PARTITION BY customer_id ORDER BY order_date) as order_rank
    FROM Delivery
)
SELECT 
    ROUND(
        AVG(CASE 
            WHEN order_date = customer_pref_delivery_date THEN 100.0 
            ELSE 0 
        END), 2
    ) as immediate_percentage
FROM FirstOrders
WHERE order_rank = 1

-- @lc code=end

