-- 7 lets invitre the artists that who have writtrn the most rock music in our dataset.write a query that returns the artists
-- name and total track count of the top 10 rock bands.

select artist.artist_id, artist.name,COUNT(artist.artist_id) as number_of_songs
from track
join album2 on album2.album_id = track.album_id
join artist on artist.artist_id = album2.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name LIKE 'Rock'
group by artist.artist_id
order by number_of_songs desc
limit 10;