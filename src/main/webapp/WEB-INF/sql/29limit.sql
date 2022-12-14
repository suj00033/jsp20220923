-- limit 조회 결과 row 수를 제한
SELECT * FROM Customers;
-- 5개만 조회
SELECT * FROM Customers LIMIT 5;

-- 가장 높은 가격 3개만 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 3;
-- NULL이 아닌 것중에서 가장 낮은 가격 3개만 조회
SELECT * FROM Products WHERE Price IS NOT NULL ORDER BY Price LIMIT 3;

-- 가장 나이가 많은 직원 2명 조회
SELECT * FROM Employees;
SELECT * FROM Employees ORDER BY BirthDate LIMIT 2;
-- 가장 나이가 적은 직원 2명 조회
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 2;

-- LIMIT : 중간 레코드만 조회
SELECT * FROM Customers;
SELECT * FROM Customers 
WHERE CustomerID ORDER BY CustomerID LIMIT 3, 3; -- 3번 인덱스부터 3개 출력

SELECT * FROM Customers;
SELECT * FROM Customers 
WHERE CustomerID ORDER BY CustomerID LIMIT 3; -- 0번 인덱스부터 3개 출력

-- 직원의 나이가 두번째, 세번째 많은 사람 조회
SELECT * FROM Employees ORDER BY BirthDate LIMIT 3;
SELECT * FROM Employees ORDER BY BirthDate LIMIT 1, 2;
-- 두번째로 어린 직원 조회
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 1, 1;
-- 두번째로 가격이 비싼 상품 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 2;
SELECT * FROM Products ORDER BY Price DESC LIMIT 1, 1;
-- 10번째로 가격이 비싼 상품 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 10;
SELECT * FROM Products ORDER BY Price DESC LIMIT 9, 1;