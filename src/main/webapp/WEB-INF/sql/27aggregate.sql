-- aggregate function : 집합함수, 그룹함수
SELECT * FROM Products;
SELECT * FROM Products ORDER BY CategoryID, Price DESC;
SELECT MAX(price) FROM Products;

-- 카테고리별로 큰값 출력
SELECT CategoryID, MAX(price) FROM Products
GROUP BY CategoryID; 

-- CategoryID별로 가장 작은값 출력
-- CategoryID별 평균 가격
-- CategoryID별 가격 합
SELECT CategoryID, MIN(price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, AVG(price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, SUM(price) FROM Products GROUP BY CategoryID;

-- 나라별 고객 수
SELECT * FROM Customers;
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;
-- 도시별 공급자 수
SELECT * FROM Suppliers;
SELECT City, COUNT(*) FROM Suppliers GROUP BY City;

-- 나라별, 도시별 고객 수
SELECT Country, City, COUNT(*) FROM Customers GROUP BY Country, City;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country, COUNT(*) FROM Customers GROUP BY Country
HAVING COUNT(*) > 5; -- 5보다 큰 결과만 조회

-- 상품 테이블에서 카테고리별 평균
-- 카테고리id 평균 30.00보다 큰 것만 조회
SELECT * FROM Products;
SELECT CategoryID, AVG(price) average FROM Products GROUP BY CategoryID
HAVING AVG(price) > 30.00;