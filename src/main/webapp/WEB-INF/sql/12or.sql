-- OR : 두 조건 중 하나만 ture이면 row 선택됨
SELECT * FROM Customers;

SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Mexico';

-- USA와 UK 사는 고객들 조회
SELECT * FROM Customers WHERE Country = 'USA' OR Country = 'UK'; 
-- 베를린과 런던에 사는 고객들 조회
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';
-- USA와 UK에 있는 공급자 조회
SELECT * FROM Suppliers WHERE Country = 'USA' OR Country = 'UK';
-- 카테고리가 1, 2번인 상품 조회
SELECT * FROM Products WHERE CategoryID = 1 OR CategoryID = 2;
