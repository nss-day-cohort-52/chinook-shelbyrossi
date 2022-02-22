-- Provide a query that shows the most purchased track(s) of 2013.


SELECT t.Name, COUNT(t.Name) as track_count
FROM InvoiceLine il
JOIN Invoice i on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
WHERE strftime("%Y", i.InvoiceDate) = "2013"
GROUP by t.Name
ORDER BY track_count DESC