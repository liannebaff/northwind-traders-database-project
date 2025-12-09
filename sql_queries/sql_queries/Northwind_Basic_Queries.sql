-- Basic Queries

use northwind; 

-- SELECT, FROM
select * from categories;
select customername, city, country From Customers;
select productID, productname From Products;

-- SELECT DISTINCT
select distinct city from customers;
select count(distinct country) from customers;

-- WHERE
select * FROM customers WHERE Country='UK';
SELECT * FROM Products WHERE ProductID=1;
SELECT * FROM Products WHERE Price<=100;
SELECT * FROM Orders WHERE OrderDate>'1996-07-30';
SELECT customername, city, country FROM Customers WHERE City !="Madrid";
SELECT COUNT(*) FROM customers WHERE Country="USA";

-- AND, OR 
SELECT* FROM Customers WHERE Country="Germany" AND City="Berlin";
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'Stuttgart';
SELECT * FROM customers WHERE Country="UK" AND City="London";
SELECT* FROM Customers WHERE City="Portland" OR "Kirkland";
SELECT* FROM Orders WHERE OrderDate < "1996-08-27" OR OrderDate > "1997-02-21";

-- LIKE
select * from customers where customername like "a%";
select * from customers where customername like "%a";
select * from customers where customername like "%or%";
select * from customers where customername like "a_%";
select *from customers where customername like "a%o";
select * from customers where customername like "a%e";
SELECT * FROM Customers WHERE CustomerName LIKE '_r%';
SELECT * FROM Customers WHERE CustomerName LIKE '_______r%';
SELECT* From Suppliers WHERE Country Like "%land%";
SELECT* FROM Employees WHERE firstname LIKE "_n%";

-- IN
SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
SELECT* FROM Customers WHERE City IN('Berlin','Paris','Madrid');
SELECT* FROM Orders WHERE ShipperID IN(1,3);

-- BETWEEN
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20; -- Numbers do not need " ".

-- ORDER BY
SELECT * FROM Customers ORDER BY Country;
SELECT * FROM Products ORDER BY Price;
select * from products order by price desc;
SELECT * FROM Customers ORDER BY Country desc, city;
SELECT * FROM Customers ORDER BY Country desc, city, customerid desc;
select * from products where productname like "%choco%" order by price;

-- LIMIT
SELECT * FROM Customers LIMIT 3;
SELECT * FROM Products ORDER BY PRICE LIMIT 5;

-- AGGREGATE FUNCTIONS (MIX, MAX, COUNT, SUM ETC.)
select min(price) from products;
select min(price) from products;
select max(price) from products;
select min(productname) from products;
select max(productname) from products;
select min(orderdate) from orders;
select max(orderdate) from orders;
select avg(price) from products;

-- ALIASING
select customerid as ID, customername as Customers from customers;
select customerid as ID, customername as Customers from customers as c;
SELECT CustomerName, CONCAT_WS(', ', Address, PostalCode, City, Country) AS Address FROM Customers;
SELECT CustomerName, CONCAT_WS(' ', Address, PostalCode, City, Country) AS Address FROM Customers;

-- NEARPOD EXERCISE (INC ORDER BY ASC/DESC )
use northwind;
SELECT * FROM Customers;
SELECT CustomerName, City FROM Customers;
SELECT DISTINCT City FROM Customers;
SELECT * FROM Products WHERE Price>50;
SELECT * FROM Customers WHERE Country='USA' OR Country='UK';
SELECT * FROM Orders ORDER BY OrderDate DESC;
SELECT * FROM Products WHERE Price BETWEEN 20 AND 50 ORDER BY Price DESC; 
SELECT * FROM Customers WHERE Country='USA' AND City IN ('Portland', 'Kirkland');
SELECT * FROM Customers WHERE Country='UK' OR City='London' ORDER BY CustomerName DESC;
SELECT * FROM Products WHERE CategoryID=1 OR CategoryID=2 ORDER BY ProductName ASC;