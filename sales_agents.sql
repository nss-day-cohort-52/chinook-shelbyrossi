-- Provide a query showing only the Employees who are "Sales Agents".



SELECT 
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    e.Title
 

FROM Employee e 
JOIN 
WHERE title LIKE "%Sales%"
