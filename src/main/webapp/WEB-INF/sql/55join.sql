SELECT *
FROM Customers c JOIN Orders o
				 JOIN Employees e;
				
-- 총 rows : cRow * oRow * eRow = 679,770
-- 총 cols : cCol + oCol + eCol = 18
SELECT COUNT(*) FROM Customers; -- 91
SELECT COUNT(*) FROM Employees; -- 9
SELECT COUNT(*) FROM Orders; -- 830

SELECT COUNT(*)
FROM Customers c JOIN Orders o
				 JOIN Employees e;
                 
DESC Customers; -- 7
DESC Orders; -- 5
DESC Employees; -- 6

-- 솎아내기
SELECT c.CustomerName, e.FirstName, e.LastName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

SELECT * FROM Employees;
SELECT * FROM Shippers;
SELECT * FROM Orders;
-- '1996-07-04'에 주문을 처리한 직원이름과 배송자명 조회
SELECT e.FirstName, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON e.EmployeeID = o.EmployeeID
			  JOIN Shippers s ON s.ShipperID = o.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 주문 고객, 직원, 배송자 조회
SELECT c.CustomerName, e.FirstName, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON e.EmployeeID = o.EmployeeID
			  JOIN Shippers s ON s.ShipperID = o.ShipperID
              JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';
