-- Which country's customers spent the most?
   
select max(Total), BillingCountry
from (
    select i.BillingCountry, sum(i.Total) as Total
    from Invoice i
    group by i.BillingCountry
);