-- ORDER BY : 조회된 레코드(행, row) 정렬

SELECT * FROM Customers ORDER BY CustomerID; -- CustomerID로 정렬
SELECT * FROM Customers ORDER BY CustomerName;
SELECT * FROM Customers ORDER BY Country;

SELECT * FROM Customers ORDER BY Country, City; -- 나라 정렬 후, 나라 안에서 도시로 또 정렬

-- ASC : 오름차순
-- DESC : 내림차순

SELECT * FROM Customers ORDER BY Country ASC; -- ASC가 기본값
SELECT * FROM Customers ORDER BY Country DESC;

SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City;
SELECT * FROM Customers ORDER BY Country DESC, City DESC;

-- 컬럼명 대신 컬럼 번호로 작성 가능
SELECT * FROM Customers ORDER BY CustomerName; -- 2번째열
SELECT * FROM Customers ORDER BY 2;

SELECT CustomerName, City FROM Customers;
SELECT CustomerName, City FROM Customers ORDER BY CustomerName;
SELECT CustomerName, City FROM Customers ORDER BY 1 DESC;
SELECT CustomerName, City FROM Customers ORDER BY 2, 1;

-- 직원 생일 순으로 조회
SELECT * FROM Employees ORDER BY BirthDate;
-- 상품명순으로 상품 조회
SELECT * FROM Products ORDER BY ProductName;
-- 가격이 높은 것부터 낮은 것 순으로 상품 조회
SELECT * FROM Products ORDER BY Price DESC;
-- 공급자를 나라, 도시 순으로 조회
SELECT Country, City FROM Suppliers;

-- 1번 카테고리에 있는 상품들을 상품명, 가격 조회 (가격 내림차순으로)
SELECT ProductName, Price FROM Products WHERE CategoryID = 1 ORDER BY Price DESC;
--        컬럼,                 테이블,         타입