SELECT Employees.EmployeeID, Employees.LastName, Employees.FirstName, COUNT(Orders.OrderID) AS "참 잘했어요"
FROM Employees
         LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID, Employees.LastName, Employees.FirstName
ORDER BY COUNT(Orders.OrderID) DESC;