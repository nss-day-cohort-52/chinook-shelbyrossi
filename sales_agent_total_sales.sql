SELECT 
    e.EmployeeId,
    e.FirstName,
    e.LastName,
  COUNT(c.CustomerId)
 

FROM Employee e 
LEFT JOIN Customer c on e.EmployeeId = c.SupportRepId
group by e.EmployeeId

