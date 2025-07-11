# Write your MySQL query statement below
SELECT  p.product_id , 
round(ifnull(sum(price*units)/nullif(sum(units), 0),0),2)average_price
FROM Prices p
left join UnitsSold u 
on p.product_id = u.product_id
and purchase_date between start_date and end_date
group by 1