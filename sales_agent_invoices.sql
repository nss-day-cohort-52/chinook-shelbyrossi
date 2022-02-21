-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT 
    c.SupportRepId,
    e.FirstName,
    e.LastName,
    i.InvoiceId
   

FROM Customer c 
JOIN Invoice i
    ON c.customerId = i.CustomerId
INNER JOIN Employee e
    ON c.SupportRepId = e.EmployeeId


