SELECT Employees.EmployeeID, Employees.LastName, Employees.FirstName, COUNT(Orders.OrderID) AS "PERFORMANCE"
FROM Employees
         LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID, Employees.LastName, Employees.FirstName
ORDER BY COUNT(Orders.OrderID) DESC;