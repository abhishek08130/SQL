--
-- @lc app=leetcode id=627 lang=mysql
--
-- [627] Swap Salary
--

-- @lc code=start
UPDATE Salary
SET sex = CASE 
            WHEN sex = 'm' THEN 'f' 
            WHEN sex = 'f' THEN 'm' 
          END;
-- @lc code=end

