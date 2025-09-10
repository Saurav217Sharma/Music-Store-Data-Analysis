-- 2 which coutries have the most invoice

select COUNT(*) as c, billing_country
from invoice
group by billing_country
order by c desc