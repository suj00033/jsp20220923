-- NULL 관련 함수
SELECT * FROM Products;

-- IFNULL : 값이 없으면 (NULL) 다른값으로 바꿔서 조회
SELECT price FROM Products;
SELECT INNULL(price, 0) FROM Products; -- Null이면 0으로 바꾸겠다

SELECT ProductID, ProductName, SupplierID, CategoryID, IFNULL(price, 0)
FROM Products;

SELECT AVG(price) FROM Products; -- 28.866364
SELECT AVG(IFNULL(price, 0)) FROM Products; -- NULL을 0으로 바꾼뒤 같이 계산, 28.496282

-- Customers 테이블에 CustomerName이 NULL이면 -> 'Annoymous'
SELECT * FROM Customers;
SELECT IFNULL(CustomerName, 'Annoymous') FROM Customers;