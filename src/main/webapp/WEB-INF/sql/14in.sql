-- IN : 나열된 값 중에 하나라도 일치하면
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Mexico' OR Country = 'Germany';

-- IN
SELECT * FROM Customers WHERE Country IN ('Germany', 'Mexico');
SELECT * FROM Customers WHERE Country IN ('Germany', 'Mexico', 'USA');

-- Customers에서 Madrid, München, London에 사는 고객 조회
SELECT * FROM Customers WHERE City IN ('Madrid', 'München', 'London');

-- UK, USA, Japan에 있는 공급자들 조회
SELECT * FROM Suppliers WHERE Country IN ('UK', 'USA', 'Japan');

-- 카테고리번호 1,2,3인 상품들 조회
SELECT * FROM Products WHERE CategoryID IN(1, 2, 3);

-- 1996년7월8일, 1996년7월19일에 주문한 주문번호 조회
SELECT * FROM Orders WHERE OrderDate IN('1996-07-08', '1996-07-19');
