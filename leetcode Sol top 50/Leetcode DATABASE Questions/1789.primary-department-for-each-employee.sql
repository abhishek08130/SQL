--
-- @lc app=leetcode id=1789 lang=mysql
--
-- [1789] Primary Department for Each Employee
--

-- @lc code=start
# Write your MySQL query statement below
-- @lc code=start
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id NOT IN (SELECT employee_id FROM Employee WHERE primary_flag = 'Y')
GROUP BY employee_id;
-- @lc code=end
-- @lc code=end

