-- Provide a query that shows the top 3 best selling artists.

SELECT a.Name, COUNT(il.TrackId) as track_count
from InvoiceLine il
JOIN Track t on t.TrackId = il.trackId
JOIN Album ab on ab.AlbumId = t.AlbumId
JOIN Artist a on a.ArtistId = ab.ArtistId
GROUP BY a.ArtistId
ORDER BY track_count DESC
LIMIT 3;