-- DELETE : 테이블의 레코드 삭제

SELECT * FROM Customers WHERE CustomerID = 23; -- 항상 SELECT WHERE로 확인하기

DELETE FROM Customers
WHERE CustomerID = 44;

-- 고객 90 삭제
DELETE FROM Customers
WHERE CustomerID = 90;

-- 고객 91 삭제
DELETE FROM Customers
WHERE CustomerID = 91;

-- USA 고객들 지우기
DELETE FROM Customers
WHERE Country = 'USA';

SELECT * FROM Customers WHERE Country = 'Mexico';

-- UK 고객들 지우기
DELETE FROM Customers
WHERE Country = 'UK';

-- Mexico 고객들 지우기
DELETE FROM Customers
WHERE Country = 'Mexico';

