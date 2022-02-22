-- Provide a query that shows the top 5 most purchased tracks over all years

SELECT t.Name, count(il.trackId) as track_count, il.trackId as track_count 
FROM InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
GROUP BY il.TrackId
ORDER BY track_count DESC
LIMIT 5; 