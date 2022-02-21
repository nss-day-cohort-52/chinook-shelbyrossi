SELECT i.InvoiceId, COUNT(il.InvoiceId) line_item_count
FROM Invoice i
JOIN InvoiceLine il on i.InvoiceId = il.InvoiceId
group by il.InvoiceId