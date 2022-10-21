-- ALIAS : 컬럼/테이블에 별칭을 줄 수 있다.
-- AS

SELECT CustomerID, CustomerName FROM Customers;
SELECT CustomerID AS id, CustomerName AS name FROM Customers; -- id와 name으로 컬럼명 변경

SELECT 
	CustomerID, 
	IFNULL(CustomerName, 'Anonymous'),
	ContactName,
	Address,
	City,
	PostalCode,
	Country
FROM Customers; -- 컬럼명 복잡
SELECT CustomerID AS id, IFNULL(CustomerName, 'Anonymous') AS name FROM Customers;

-- 직원테이블 조회
-- EmployeeID -> id
-- FirstName -> fname
-- LastName -> lname
-- BirthDate -> birth
SELECT * FROM Employees;
SELECT EmployeeID AS id, FirstName AS fname, LastName AS lname, BirthDate AS birth, Photo, Notes FROM Employees;

-- AS 키워드 생략가능
SELECT EmployeeID id, FirstName fname, LastName lname, BirthDate birth, Photo, Notes FROM Employees;

-- Products 테이블에 가격 null
-- price가 null이면 0.00으로 조회
-- 위 컬럼명 Price
SELECT * FROM Products;
SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, IFNULL(Price, 0.00) AS Price FROM Products;