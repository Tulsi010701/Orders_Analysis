SELECT item_name, ROUND(SUM(price)) as total_revenue_item FROM
order_details o join menu_items m on o.item_id = m.menu_item_id
group by item_name order by ROUND(SUM(price)) desc LIMIT 5
