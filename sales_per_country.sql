-- Provide a query that shows the total sales per country.

SELECT BillingCountry, sum(Total)
FROM Invoice 
GROUP BY BillingCountry