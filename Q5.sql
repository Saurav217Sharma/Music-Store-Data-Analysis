-- 5 who is the best costumer ? the costumer who has spend the most money will be declared the best customer. write 
-- a query that retuens the person who has spent the mostr money.alter

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer	
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc 
limit 1	