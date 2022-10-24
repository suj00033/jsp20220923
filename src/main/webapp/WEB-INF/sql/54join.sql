USE w3schools;


-- 상품명 상품을 공급하는 공급자명 조회
SELECT p.ProductName, s.SupplierName
FROM Products p JOIN Suppliers s
	ON p.SupplierID = s.SupplierID;

SELECT * FROM Suppliers;
SELECT * FROM Products;
-- 'Tofu'를 공급하는 공급자가 사는 도시 조회
SELECT p.ProductName, s.City
FROM Products p JOIN Suppliers s-- 공통으로 들어가는 컬럼을 찾는다
	ON p.ProductName = 'Tofu';
	
-- 'Mayumi''s'가 공급하는 상품명들 조회
SELECT * 
FROM Products p JOIN Suppliers s
	ON p.SupplierID = s.SupplierID
    WHERE s.SupplierName = 'Mayumi''s';
    
-- '1996-07-04'날 주문한 고객명 조회
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Orders WHERE OrderDate = '1996-07-04';
SELECT c.CustomerName
	FROM Customers c JOIN Orders o
    ON c.CustomerID = o.CustomerID
    WHERE o.OrderDate = '1996-07-04';

SELECT * FROM Employees;
-- '1996-07-04'날 주문을 처리한 직원명 조회
SELECT e.FirstName, e.LastName
	FROM Employees e JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
    WHERE o.OrderDate = '1996-07-04';
SELECT * FROM Shippers;
-- '1996-07-04'날 주문을 배송한 배송자명 조회
SELECT s.ShipperName
	FROM Shippers s JOIN Orders o
    ON s.ShipperID = o.ShipperID
    WHERE o.OrderDate = '1996-07-04';