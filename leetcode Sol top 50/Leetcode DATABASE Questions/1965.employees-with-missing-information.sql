--
-- @lc app=leetcode id=1965 lang=mysql
--
-- [1965] Employees With Missing Information
--

-- @lc code=start
# Write your MySQL query statement below
SELECT employee_id
FROM (
    SELECT e.employee_id
    FROM Employees e
    LEFT JOIN Salaries s ON e.employee_id = s.employee_id
    WHERE s.salary IS NULL
    UNION
    SELECT s.employee_id
    FROM Salaries s
    LEFT JOIN Employees e ON s.employee_id = e.employee_id
    WHERE e.name IS NULL
) AS missing_info
ORDER BY employee_id;

-- @lc code=end

