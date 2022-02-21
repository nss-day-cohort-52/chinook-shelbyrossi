
-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country



SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    i.InvoiceId,
    i.BillingCountry

FROM Customer c 
JOIN Invoice i
    ON c.customerId = i.CustomerId
WHERE country = "Brazil"
