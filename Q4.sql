-- 4 which city has the best costumers? we wp\ould like to  to throw a promotional muic festial in the city we made 
-- the most money. write a query that returns one city that has the highest sum of invoice totals.
-- return both the city name and sum of all invoice totals.

select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc