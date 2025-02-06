--
-- @lc app=leetcode id=550 lang=mysql
--
-- [550] Game Play Analysis IV
--

-- @lc code=start
# Write your MySQL query statement below
WITH FirstLogins AS (
    SELECT player_id, MIN(event_date) as first_login
    FROM Activity
    GROUP BY player_id
),
ConsecutiveLogins AS (
    SELECT COUNT(DISTINCT f.player_id) as consecutive_players
    FROM FirstLogins f
    JOIN Activity a ON f.player_id = a.player_id 
    AND f.first_login = DATE_SUB(a.event_date, INTERVAL 1 DAY)
),
TotalPlayers AS (
    SELECT COUNT(DISTINCT player_id) as total_players
    FROM Activity
)
SELECT ROUND(
    IFNULL(consecutive_players/total_players, 0), 2
) as fraction
FROM ConsecutiveLogins, TotalPlayers;

-- @lc code=end

