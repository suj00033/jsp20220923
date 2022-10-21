-- CONCAT : 스트링을 연결한 결과 리턴
SELECT CONCAT('ab', 'de');
SELECT CONCAT('def', ' ', 'xyz', ' captain');

SELECT * FROM Customers;
SELECT CustomerID, CustomerName, ContactName, CONCAT(Address, ' ', City) Addrss FROM Customers;

-- 직원테이블에서 firstName과 lastName 연결해서 full Name 조회
SELECT * FROM Employees;
SELECT EmployeeID, CONCAT(firstName, ' ', lastName) fullName, BirthDate FROM Employees;