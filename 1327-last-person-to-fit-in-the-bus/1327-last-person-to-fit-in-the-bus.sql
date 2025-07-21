# Write your MySQL query statement below
select person_name from (select person_name, turn, sum(weight) over (order by turn) AS cum from queue) p1 where cum<= 1000 order by turn DESC limit 1;