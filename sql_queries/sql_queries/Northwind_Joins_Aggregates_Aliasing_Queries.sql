/* Joins */
select * From orders inner join customers on orders.customerid = customers.customerid;
select customers.customerid, customers.customername, orders.orderid from orders inner join customers on orders.customerid = customers.customerid;
select customers.customerid, customername, orderid from orders inner join customers on orders.customerid = customers.customerid;
/* if same column name are contained in different table, you should mention source table*/

/* Combine Orders and Employees Table*/
select firstname, lastname, orders.orderid from employees inner join orders on employees.employeeid = orders.employeeid;
select firstname, lastname, orders.orderid from employees inner join orders on employees.employeeid = orders.employeeid order by orderid;
 
 /* Products - Suppliers = G'Day, Mate*/ 
select Productname, suppliername from products inner join suppliers on products.supplierid = suppliers.supplierid where suppliername = "G'Day, Mate";

/* Exercises */
SELECT orderID, firstname, lastname, Orders.orderdate FROM employees INNER JOIN orders ON employees.employeeID = orders.employeeID;
SELECT * FROM Orders INNER JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID WHERE ShipperName = 'Speedy Express';
SELECT Products.*, categories.categoryname FROM Products INNER JOIN Categories ON Categories.CategoryID=Products.ProductID;
SELECT Order_details.OrderID, Products.ProductID,Products.ProductName, Order_details.Quantity FROM Order_details INNER JOIN Products ON Order_details.ProductID=Products.ProductID;

/* all rows returned from employees table, 
only matching rows from orders table.
If there is no match , null values returned.*/
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

/*Return only missing values*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
where orderid is null;
/* customers with no orders*/

/* alisaing*/
SELECT c.CustomerName, o.OrderID
FROM Customers as c -- rename as c
LEFT JOIN Orders as o -- rename as o
ON c.CustomerID = o.CustomerID
where orderid is null;

SELECT *
FROM Customers
CROSS JOIN Orders;
/* there are 91 rows in customers
multiplied by 196 rows in orders*/

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;

/* The following SQL statement lists the number of orders sent by each shipper*/
-- 1) combine shippers to orders details
-- 2) group by shippers
-- 3) count number of orders
select count(orderid) as totalorders, shippername
from shippers as s
left join orders as o
on s.shipperid = o.shipperid
group by shippername;
 
 SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalSales
FROM Order_Details as od
JOIN Products as p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

/* Exercises */
SELECT Customers.Country, COUNT(customerID) as TotalCustomers FROM Customers GROUP BY Country;
SELECT Products.ProductName, COUNT(quantity) as TotalQuantity FROM Products GROUP BY Category;
select categoryname, sum(quantity) as totalquanity
from categories as c
join products as p
on c.categoryid = p.categoryid
join order_details as od
on od.productid = p.productid
group by categoryname;

select customername, productname
from customers as c
left join orders as o
on c.customerid = o.customerid
left join order_details as od
on o.orderid = od.orderid
left join products as p
on od.productid = p.productid;