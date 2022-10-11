-- not equals : <> , != 같지않다
SELECT * FROM Customers WHERE Country <> 'Mexico';
SELECT * FROM Customers WHERE Country <> 'Germany'; -- 독일이 아닌 테이블 조회
SELECT * FROM Customers WHERE Country != 'Mexico';
SELECT * FROM Customers WHERE Country != 'Germany'; -- <>, != 같음

SELECT * FROM Suppliers WHERE Country != 'Japan';
SELECT * FROM Employees WHERE EmployeeID != 1; 