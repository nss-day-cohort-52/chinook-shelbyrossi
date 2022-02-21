-- --Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name



SELECT DISTINCT 
    c.SupportRepId,
    c.Country,
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.Total,
    e.FirstName,
    e.LastName

FROM Customer c 
JOIN Invoice i
    ON c.customerId = i.CustomerId
INNER JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
