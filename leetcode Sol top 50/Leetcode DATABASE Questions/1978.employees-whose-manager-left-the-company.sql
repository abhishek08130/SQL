--
-- @lc app=leetcode id=1978 lang=mysql
--
-- [1978] Employees Whose Manager Left the Company
--

-- @lc code=start
# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 30000 
AND manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id;

-- @lc code=end

