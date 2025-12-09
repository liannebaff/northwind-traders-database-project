
SELECT ProductName, SupplierName FROM Products LEFT JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID;
SELECT ProductName, CategoryName FROM Products LEFT JOIN Categories ON Products.CategoryID=Categories.CategoryID;
SELECT ProductName, CategoryName FROM Products LEFT JOIN Categories ON Products.CategoryID=Categories.CategoryID WHERE CategoryName='Meat/Poultry';
SELECT OrderID, OrderDate, CustomerName, CONCAT(FirstName,' ',LastName) AS EmployeeName FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID;
SELECT ProductName, CategoryName, SupplierName FROM Products LEFT JOIN Categories ON Products.CategoryID=Categories.CategoryID LEFT JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID;
SELECT OrderID, OrderDate, C.CustomerID, CustomerName FROM Orders LEFT JOIN Customers AS C ON Orders.CustomerID=C.CustomerID WHERE OrderDate LIKE "1996%";
SELECT CategoryName, Count(ProductID) AS "Number of Products" FROM Categories LEFT JOIN Products ON Categories.CategoryID=Products.CategoryID GROUP BY CategoryName;
SELECT ProductName, Price, SUM(Quantity) AS "Total Quantity of Orders" FROM Products LEFT JOIN Order_details ON Products.ProductID=Order_details.ProductID GROUP BY ProductName, Price;
