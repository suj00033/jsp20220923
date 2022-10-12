-- NOT : false -> true, true -> false

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country <> 'Germany'; -- !=와 같은
SELECT * FROM Customers WHERE NOT Country = 'Germany'; -- <> != 와 같은 의미

-- USA에 살지않는 고객들
SELECT * FROM Customers WHERE NOT Country = 'USA';

-- USA있지않는 공급자들
SELECT * FROM Suppliers WHERE NOT Country = 'USA';

-- OrderDate가 97년도가 아닌 주문 번호들
SELECT * FROM Orders WHERE NOT (OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01'); -- 괄호를 쓰자
SELECT * FROM Orders WHERE NOT OrderDate < '1997-01-01' OR OrderDate >= '1998-01-01';