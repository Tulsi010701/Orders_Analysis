SELECT MONTHNAME(order_date) as month, count(order_id) as total_orders FROM restaurant_db.order_details
group by month,month(order_date) order by month(order_date) asc;	
