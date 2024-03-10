with cte as (
SELECT MONTHNAME(order_date) as month, month(order_date) as
month_num, ROUND(SUM(m.price)) as price from order_details o join
menu_items m on
o.item_id = m.menu_item_id group by month, month(order_date) order by
month(order_date) )
select month , SUM(price) over(order by month_num) as total_revenue
from cte;
