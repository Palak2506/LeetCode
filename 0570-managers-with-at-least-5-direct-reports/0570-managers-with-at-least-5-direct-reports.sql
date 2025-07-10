# Write your MySQL query statement below
SELECT e1.name FROM Employee e1 JOIN Employee e2 ON e1.id = e2.managerId Group By e1.id, e1.name HAVING count(e2.id)>= 5;

