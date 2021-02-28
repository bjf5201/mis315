-- From the table [Order Details]
-- 1.Show OrderID, the minimum, maximum and average unit priceby OrderID. Order by OrderID, ascending.

SELECT  OrderID,
        MIN(OrderID) AS [minimum],
        MAX(OrderID) AS [maximum],
        AVG(OrderID) AS [average]
FROM    [Order Details] 
GROUP BY    OrderID
ORDER BY    OrderID

-- 2. Show OrderID and the average discount by OrderID. Order by OrderID, ascending.

SELECT  OrderID,
        AVG(Discount) AS [Average Discount]
FROM    [Order Details]
GROUP BY    OrderID
ORDER BY    OrderID

-- 3. Show OrderID and the total value of order by OrderID.Order by OrderID, ascending.Value of order is calculated as (Unit Price * Quantity).

SELECT  OrderID,
        SUM(UnitPrice * Quantity) AS [Value of Order]
FROM    [Order Details]
GROUP BY    OrderID
ORDER BY    OrderID

-- 4. Show Product ID and total discount for each product by ProductID. Order by ProductID

SELECT  ProductID,
        SUM(Discount) AS [Total Discount]
FROM    [Order Details]
GROUP BY    ProductID
ORDER BY    ProductID

-- 5. Show Product ID and the average value of orderby ProductID.Order by ProductID, ascending.ascending.Valueoforderiscalculatedas(UnitPrice*Quantity).

SELECT  ProductID,
        AVG(UnitPrice * Quantity) AS [Average Value of Order]
FROM    [Order Details]
GROUP BY    ProductID
ORDER BY    ProductID

-- From table Person
-- 1. Show the gender and average weight of people by gender.Order by gender, descending.

SELECT  gender,
        AVG(weight) AS [Average Weight]
FROM    Person
GROUP BY    gender
ORDER BY    gender

-- 2. Select the firstName, and count how many people are of each first name.
-- Order by firstName. Make sure that the field that is being counted is ID.

SELECT  firstName,
        COUNT(ID) AS [Number of People]
FROM    Person
GROUP BY    firstName
ORDER BY    firstName

-- 3. Select the gender and count how many people are of each gender. Order by gender. Make sure that the field that is being counted is the ID.
SELECT  gender,
        COUNT(ID) AS [Number of People]
FROM    Person
GROUP BY    gender
ORDER BY    gender

-- 4. Show the firstName,then the gender,then the count of the number of people with that combination of firstName and gender.Order by firstName

SELECT  firstName,
        gender,
        COUNT(ID) AS [Number of People]
FROM    Person
GROUP BY firstName, gender
ORDER BY firstName

--5. Show Lastname, then Gender, then the count of the number of people with that combination
-- of lastName and gender, then the average weight of people with that combination of lastName and 
-- gender. Only include people whose last name begins with the letter T.

SELECT  lastName,
        gender,
        COUNT(ID) AS [Number of People],
        AVG(weight) AS [Average Weight]
FROM    Person
WHERE   lastName LIKE 'T%'
GROUP BY    lastName, gender
ORDER BY    lastName