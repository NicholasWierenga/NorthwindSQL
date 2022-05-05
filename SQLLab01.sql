SELECT *
FROM Customers;

SELECT DISTINCT Country
FROM Customers;

SELECT *
FROM Customers
WHERE CustomerID LIKE 'BL%';

SELECT top 100 * 
FROM Orders;

SELECT CustomerID
FROM Orders
WHERE ShipPostalCode IN ('1010', '3012', '12209', '05023');

SELECT *
FROM Orders
WHERE ShipRegion IS NOT NULL;

SELECT *
FROM Orders
ORDER BY ShipCountry, ShipCity;

INSERT INTO Customers
VALUES ('AGRAD', 'Boeing', 'agra gthst', 'CEO','ragrae str. 1344', 'Detroit', NULL, '12453', 'USA', '030-6424345', '040-2315362');

UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France';

DELETE FROM [Order Details]
WHERE Quantity = 1;

SELECT CustomerID
FROM Orders
WHERE OrderID = 10290;

SELECT *
FROM Customers a
INNER JOIN Orders b
ON a.CustomerID = b.CustomerID;

SELECT FirstName
FROM Employees
WHERE ReportsTo IS NULL;

SELECT FirstName
FROM Employees
WHERE ReportsTo = 2;

SELECT orderID, AVG(Quantity) AS "Average", MAX(Quantity) AS "Max", Min(Quantity) AS "Min"
FROM [Order Details]
GROUP BY orderID;

SELECT 'total order stats' AS " ", AVG(Quantity) AS "Average", MAX(Quantity) AS "Max", Min(Quantity) AS "Min"
FROM [Order Details];

SELECT CustomerID, City
FROM Customers
WHERE City IN ('London', 'Paris');

SELECT *
FROM Customers c
INNER JOIN orders o
ON (c.CustomerID = o.CustomerID);

SELECT *
FROM Customers c
LEFT JOIN orders o
ON (c.CustomerID = o.CustomerID);

SELECT *
FROM Customers c
RIGHT JOIN orders o
ON (c.CustomerID = o.CustomerID);

SELECT DISTINCT City
FROM Customers;

SELECT FirstName
FROM Employees
ORDER BY FirstName;

SELECT orderID, SUM(UnitPrice) AS "Total cost"
FROM [Order Details]
GROUP BY OrderID;

SELECT *
FROM Employees
WHERE HireDate > '01/01/1994';

SELECT FirstName, LastName, YEAR(SYSDATETIME()) - YEAR(HireDate) AS "Years worked"
FROM Employees;

SELECT ProductName
FROM Products
ORDER BY ProductName ASC;

SELECT ProductName
FROM Products
ORDER BY ProductName DESC;

SELECT ProductName AS "Items low on stock"
FROM Products
WHERE UnitsInStock < 6;

SELECT ProductName AS "Discontinued Items"
FROM Products
WHERE Discontinued = 1;

SELECT ProductName AS "Products having Tofu"
FROM Products
WHERE ProductName LIKE '%Tofu%';

SELECT TOP 1 ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate > '1/1/1993';

SELECT FirstName, LastName, TitleOfCourtesy
FROM Employees
WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.');

SELECT FirstName, LastName, HomePhone
FROM Employees
WHERE HomePhone LIKE '(206)%';