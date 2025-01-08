--
-- @lc app=leetcode id=1484 lang=mysql
--
-- [1484] Group Sold Products By The Date
--

-- @lc code=start
# Write your MySQL query statement below
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product ASC) AS products
FROM 
    Activities
GROUP BY 
    sell_date
ORDER BY 
    sell_date;

-- @lc code=end

