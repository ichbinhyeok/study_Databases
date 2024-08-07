select Employees.EmployeeID, LastName, FirstName
FROM Employees
         LEFT JOIN Orders
                   ON Employees.EmployeeID = Orders.EmployeeID
Where Orders.OrderID IS NULL;