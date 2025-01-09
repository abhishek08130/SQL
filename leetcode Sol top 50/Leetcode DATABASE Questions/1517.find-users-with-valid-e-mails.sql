--
-- @lc app=leetcode id=1517 lang=mysql
--
-- [1517] Find Users With Valid E-Mails
--

-- @lc code=start
# Write your MySQL query statement below

SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$';

-- @lc code=end

