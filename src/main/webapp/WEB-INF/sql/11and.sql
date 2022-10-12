-- 2. database 선택 명령어를 쓴다
USE w3schools;

SELECT * FROM Customers; -- 1. 데이터 베이스를 사용하기위해서는 왼쪽 SCHEMAS에서 사용할 데이터 베이스 더블클릭하거나
SELECT * 
FROM Customers 
WHERE Country = 'Germany';

-- AND : 동시조건
SELECT *
FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin';

SELECT *
FROM Customers
WHERE CustomerName >= 'A'
AND CustomerName < 'B';  -- A로 시작하는 사람들

SELECT *
FROM Customers
WHERE CustomerName >= 'C'
AND CustomerName < 'D'; -- C로 시작하는 사람들

-- 고객 테이블에서 ContactName이 'E'로 시작하는 고객들 조회
SELECT * FROM Customers WHERE ContactName >= 'E' AND ContactName < 'F';
-- 상품 테이블에서 가격이 10.00이상 20.00미만인 상품 조회
SELECT * FROM Products WHERE Price >= 10.00 and Price < 20.00;
-- 직원 테이블에서 생일이 1950년대만 조회
SELECT * FROM Employees WHERE BirthDate >= '1950-01-01' and BirthDate < '1959-12-31';