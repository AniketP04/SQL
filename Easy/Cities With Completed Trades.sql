select users.city, count(trades.order_id) as total_orders
from trades inner join users on trades.user_id= users.user_id
where trades.status='Completed'
group by users.city order by total_orders DESC
limit 3
