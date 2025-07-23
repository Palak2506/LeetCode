# Write your MySQL query statement below
(select u.name as results from MovieRating mr, Users u where mr.user_id = u.user_id group by mr.user_id order by count(1) DESC , u.name limit 1)
UNION ALL
(select m.title as results from MovieRating mr, Movies m where mr.movie_id = m.movie_id and mr.created_at LIKE '2020-02%' group by mr.movie_id order by avg(rating) desc , m.title limit 1);