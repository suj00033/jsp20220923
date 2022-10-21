INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers; -- 복사해서 페이지 늘리는 요량

SELECT COUNT(*) FROM Customers; -- 총 고객 수