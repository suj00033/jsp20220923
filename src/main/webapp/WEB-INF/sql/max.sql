USE w3schools;
SELECT * FROM Customers ORDER BY CustomerID DESC;
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('son', 'hm', 'seoul', 'london', '12321', 'UK');

SELECT MAX(CustomerID) FROM Customers; -- 절대 사용xxxx



