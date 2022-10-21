-- 서브 쿼리 : 쿼리가 다른 쿼리 안에 작성될 수 있음

SELECT ProductName, MAX(Price) FROM Products;
SELECT ProductName, Price FROM Products WHERE ProductName = 'Chais';

-- 가장 높은 가격의 상품명을 조회
SELECT * FROM Products
WHERE Price = 
(SELECT MAX(Price) FROM Products); -- ( )를 다른 테이블인것처럼 취급

-- 가장 낮은 가격의 상품명 조회
SELECT * FROM Products
WHERE Price =
(SELECT MIN(Price) FROM Products);

-- 평균 가격보다 가격이 높은 상품들 조회
SELECT * FROM Products
WHERE Price > (SELECT AVG(price) FROM Products); 
-- 평균 가격보다 가격이 낮은 상품들 조회
SELECT * FROM Products
WHERE Price < (SELECT AVG(price) FROM Products);

SELECT AVG(price) FROM Products; -- 28.866364

-- 카테고리별 평균
SELECT * FROM 
			(SELECT CategoryID, 
            AVG(Price) average 
            FROM Products 
            GROUP BY CategoryID) A
WHERE average > 30;
