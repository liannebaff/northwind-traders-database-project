# 📦 Northwind Traders Database Project

### 📝 Project Summary
This project explores the Northwind Traders relational database using MySQL and MySQL Workbench. The aim was to explore and manipulate data using SQL queries and demonstrate practical data analysis skills including querying, joining tables, aggregating data, and generating insights relevant to sales, customers, products and suppliers.

### 🎯 Key Skills Demonstrated:
`MySQL` &nbsp; `SQL querying and joins` &nbsp; `Exploratory data analysis` &nbsp; `Query structuring` &nbsp; `Data aggregation and filtering` &nbsp; `String manipulation`

### 🧰 Tools & Technologies
- **SQL:** MySQL
- **Environment:** MySQL Workbench
  
---
### 🗂️ Database Overview & Structure

The Northwind Traders database is a sample relational database simulating a small international food trading business. It contains interconnected tables for customers, orders, order details, products, categories, suppliers, employees and shippers. The dataset contains multiple table relationships such as one-to-many and many-to-many.

#### EER Diagram

<img width="844" height="529" alt="image" src="https://github.com/user-attachments/assets/ec391eba-605a-4cec-a517-b1e32d732b90" />

---

### ⚙️ SQL Operations Demonstrated

| Operation                           | Purpose                                                        |
|-------------------------------------|----------------------------------------------------------------|
| `SELECT`                            | Retrieve data from one or more tables                          |
| `SELECT DISTINCT`                   | Return only unique (non-duplicate) values                      |
| `AS`                                | Rename columns or tables using an alias                        |
| `WHERE`                             | Filter rows based on a condition                               |
| `AND`                               | Combine multiple conditions that must *all* be true            |
| `OR`                                | Combine conditions where *at least one* must be true           |
| `IN`                                | Filter rows by matching against a list of values               |
| `BETWEEN`                           | Filter rows within a range (numbers, dates, text)              |
| `LIKE`                              | Filter rows using pattern matching (e.g., searching text)      |
| `CONCAT_WS`                         | Combines multiple values into a single string with a separator |
| `JOIN` (`INNER` `LEFT` `RIGHT`)   | Combine data from multiple tables based on related columns       |
| `CROSS JOIN`                        | Combines every row from two tables, producing a Cartesian product |
| `GROUP BY`                          | Group rows to perform aggregated calculations                  |
| `SUM`, `MIN` `MAX` `AVG` `COUNT` | Aggregate functions used to summarise data                        |
| `ORDER BY` (`DESC` `ASC`)          | Sort results in ascending or descending order                   |

---
### 🔎 SQL Process

This section outlines how I explored the Northwind database using SQL, including the operations applied and queries developed to analyse the data.

#### 🧭 Approach

- Explored table structures and relationships using the EER diagram.
- Identified key fields for joining tables across `customers` `orders` `order details` `
  products`.
- Practiced filtering, grouping and aggregating data to analyse the dataset.

#### ⚙️ SQL Operations in Practice

These are a few examples of how the operations were applied to explore, combine and summarise data across the tables in the Northwind database.

- `SELECT` ` FROM`: retrieving columns and rows from single tables e.g. `customers` `products` `categories`.
- `SELECT DISTINCT`: identifying unique values such as unique cities or countries.
- `WHERE` `AND` `OR` `IN` `BETWEEN` `LIKE`: filtering datasets based on conditions and ranges.
- `JOINs` (`INNER` `LEFT` `RIGHT` `CROSS`): combining multiple tables e.g. `orders` with `customers`, `products` with `suppliers`.
- `GROUP BY` & Aggregates (`SUM` `AVG` `COUNT` `MIN` `MAX`): summarising data to understand totals, averages and counts.
- `ORDER BY` `LIMIT`: sorting and restricting query results for readability and insights.
- `AS` & `CONCAT_WS`: formatting output columns and combining text fields for clarity.

#### 📝 Example Queries

**1. Top Products by Revenue**
``` sql
SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalSales
FROM Order_Details as od
JOIN Products as p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;
```

**2. Customers with No Orders** 
```sql
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
where orderid is null;
```

**3. Select suppliers from Countries with names including 'land'**
```sql
SELECT* From Suppliers WHERE Country Like "%land%";
```

**4. Number of Orders per Product**
```sql
SELECT ProductName, Price, SUM(Quantity) AS "Total Quantity of Orders" FROM Products LEFT JOIN Order_details  
ON Products.ProductID=Order_details.ProductID GROUP BY ProductName, Price;
```

**5. Create an Order List with Customer and Employee Information** 
```sql
SELECT OrderID, OrderDate, CustomerName, CONCAT(FirstName,' ',LastName) AS EmployeeName FROM Orders INNER JOIN Customers  
ON Orders.CustomerID=Customers.CustomerID INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID;
```
---
### 🪞 Insights & Reflections
- A number of customers were identified that had not made any orders.
- The country with the most customers was the USA, closely followed by Germany and France.
- The countries with the least customers were Poland, Ireland and Norway.
- The best performing category was Dairy Products and the worst performing category was Produce.
- Côte de Blaye was the product with the highest sales while Laughing Lumberjack Lager had the lowest number sales.
- Strengthened understanding of filtering, joining tables, and aggregating data and improved ability to build queries.
- Gained confidence using SQL to explore and summarise real-world datasets.

---
### 📂 Files in this Repo
- [`Northwind_Basic_Queries.sql`](sql_queries/Northwind_Basic_Queries.sql)  
  - Foundational SQL such as `SELECT`, `WHERE`, `ORDER BY`, `SELECT DISTINCT`, `IN`, `LIKE`, `BETWEEN`, aliasing and aggregate functions.

- [`Northwind_Joins_Aggregates_Aliasing_Queries.sql`](sql_queries/Northwind_Joins_Aggregates_Aliasing_Queries.sql)  
  - Joins, filtering, aggregate functions and aliasing.

- [`Northwind_Mixed_Queries.sql`](sql_queries/Northwind_Mixed_Queries.sql)  
  - Mixed practice queries using the Northwind database: joins, aggregate functions, filtering, grouping sorting and aliasing.
 
