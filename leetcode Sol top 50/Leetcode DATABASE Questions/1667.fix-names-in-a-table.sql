--
-- @lc app=leetcode id=1667 lang=mysql
--
-- [1667] Fix Names in a Table
--

-- @lc code=start
# Write your MySQL query statement below
SELECT 
    user_id,
    CONCAT(UPPER(SUBSTRING(name,1,1)), LOWER(SUBSTRING(name,2))) as name
FROM Users
ORDER BY user_id;

-- @lc code=end

