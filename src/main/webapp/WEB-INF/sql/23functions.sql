-- 내장 함수들
USE w3schools;

-- MIN : 가장 작은 값을 찾음
SELECT * FROM Products ORDER BY Price;
SELECT MIN(Price) FROM Products;

-- MAX : 가장 큰 값
SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers;
SELECT * FROM Customers ORDER BY CustomerName;
SELECT max(CustomerName) FROM Customers;

-- 직원 생일 중에 가장 먼저 태어난 사람의 생일
SELECT * FROM Employees ORDER BY BirthDate DESC;
SELECT MIN(BirthDate) FROM Employees;
-- 가장 늦게 태어난 사람의 생일
SELECT MAX(BirthDate) FROM Employees;

-- COUNT : 몇개의 데이터가 있는지 리턴
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;
-- COUNT 함수 NULL은 생략하고 카운트함
INSERT INTO Customers (ContactName, City, Country) 
VALUES ('captain', 'NY', 'USA'); -- customerName을 안넣어서 이부분은 카운트 안셈, 57
SELECT COUNT(CustomerName) FROM Customers; -- 56

-- 100.00 달러가 넘는 상품의 수 Products
SELECT COUNT(*) FROM Products WHERE Price > 100.00; -- 2
-- 60년대 (60~69)에 태어난 직원의 수
SELECT COUNT(*) FROM Employees WHERE BirthDate >= '1960-01-01' and BirthDate < '1969-12-31'; -- 4
SELECT * FROM Employees WHERE BirthDate >= '1960-01-01' and BirthDate < '1969-12-31';
-- WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

-- AVG : 평균
SELECT * FROM Products;
SELECT AVG(Price) FROM Products; -- 가격 평균, NULL은 안셈
-- NULL인 데이터 무시
INSERT INTO Products (ProductName) VALUES ('kimchi'); -- 가격이 null이기 때문에 평균 변화가 없다

-- 평균 주문 수량
SELECT * FROM OrderDetails;
SELECT AVG(Quantity) FROM OrderDetails; -- 23.8130


-- SUM : 합계
SELECT * FROM Products;
-- price 합계
SELECT SUM(Price) FROM Products; -- 2222.71

-- OrderDetails에서 총주문 수량 조회
SELECT SUM(Quantity) FROM OrderDetails; -- 51317
