SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
FROM Customer c 
WHERE country = "Brazil"
