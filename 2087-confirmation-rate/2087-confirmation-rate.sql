# Write your MySQL query statement below
SELECT s.user_id,ROUND(IF(COUNT(c.user_id) = 0, 0, AVG(c.action = 'confirmed')), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;