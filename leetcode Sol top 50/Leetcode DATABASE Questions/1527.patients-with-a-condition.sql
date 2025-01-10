--
-- @lc app=leetcode id=1527 lang=mysql
--
-- [1527] Patients With a Condition
--

-- @lc code=start
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions REGEXP '^DIAB1|[[:space:]]DIAB1';


-- @lc code=end

