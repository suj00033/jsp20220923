SELECT * FROM Customers ORDER BY CustomerID;

-- 한페이지당 10명 고객
-- 1페이지 LIMIT 0, 10; LIMIT (10 * (1-1)), 10
-- 2페이지 LIMIT 10, 10; LIMIT (10 * (2-1)), 10
-- 3페이지 LIMIT 20, 10; LIMIT (10 * (3-1)), 10
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 10;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 10, 10;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 20, 10;

SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY CustomerID DESC;