SELECT m.item_name , count(item_id) as total from order_details
d join menu_items m on d.item_id = m.menu_item_id
group by item_id order by count(item_id) desc LIMIT 5;
