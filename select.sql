-- Bethany Fannin
-- Assignment 1

-- 1. Show the number 12859 in a one-row, one-column table using SELECT 

SELECT 12859 AS [My Number];

-- 2. Show the word "empathy in a one-row, one-column table using SELECT. Column should be named "A Word"

SELECT 'empathy' AS [A Word];

-- 3. Show the SQRT of the number 8597 in one-column, one-row table. Column name should be "Square Root".

SELECT SQRT(8597) AS [Square Root];

-- 4. Find the SQRT of 5852436 and multiply it by SQRT of 28746. Show Result in column called "Result" using a single select statement.

SELECT SQRT(5852436)*SQRT(28746) AS [Result];

-- 5. Show a 3-col, 1 row table that has 875, "Boo", 857/25 in the columns. The columns should be named "Number, "Name", and "Calculation Result".
SELECT 875 AS Number,
  'Boo' AS Name,
  857/25 AS [Calculation Result];
  
-- 6. Combine the strings "James", “P.", and “Sullivan" with a space between them in a single-row, single-column table using a single SELECT statement and + operators. This should be a concatenation of five strings: "James", " ", "P."," ",and “Sullivan". Name the column "MonsterName".
SELECT 'James' + ' ' + 'P.' + ' ' + 'Sullivan' AS MonsterName;

-- 7. Select the EmployeeID, LastName,and the Titlefrom the Employeestable. EmployeeID should be in the first column, LastName in the second column, and Title in the third


SELECT Employees.EmployeeID, Employees.LastName, Employees.Title FROM Employees;

-- 8. Select the OrderID, ProductID and 80% of the UnitPrice from the [Order Details]table. OrderID should be the first column, ProducctID the second column, and the thirdcolumn should be named "Unit Priceof the Order".

SELECT od.OrderID AS OrderID,
    od.ProductID AS ProductID,
    od.UnitPrice * .8 AS [Unit Price of the Order]
    FROM [Order Details] AS [od];
    
-- 9.Show all products' ProductID, ProductName, and the total value of units on order for each productfrom the table Products. The total value is the UnitsOnOrder multiplied by the UnitPrice. Rename the columns appropriately.

SELECT Products.ProductID AS ProductID,
    Products.ProductName AS [Product Name],
    Products.[UnitsOnOrder] * Products.[UnitPrice] AS [Total Value]
    FROM Products;