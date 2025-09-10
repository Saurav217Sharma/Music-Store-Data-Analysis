-- 8 return all the track name that have a song length longer than thr average song length
-- return the name and millisecond from each track. order bt the song length with the longest song listed first.

select name,milliseconds
from track
where milliseconds > (
select avg(milliseconds) as avg_track_length
from track)
order by milliseconds desc;