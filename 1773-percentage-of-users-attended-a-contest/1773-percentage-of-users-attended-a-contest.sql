# Write your MySQL query statement below
select contest_id, round((count(user_id)/(select count(*) from users)) * 100 ,2) as percentage 
from Register group by contest_id order by percentage desc, contest_id;