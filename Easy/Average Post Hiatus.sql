select user_id, 
max(post_date::DATE) - min(post_date::DATE) as days_between
from posts WHERE
date_part('year',post_date::DATE)=2021
group by user_id
having count(post_id)>1
