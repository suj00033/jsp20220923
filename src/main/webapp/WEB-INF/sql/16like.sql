-- LIKE : 패턴으로 레코드 조회
-- 패턴에서 사용하는 특수기호(wildcard)
-- : % (0개 이상의 문자), _ (하나의 문자)

SELECT * FROM Customers WHERE CustomerName LIKE 'A%'; -- A로 시작하는 이름
SELECT * FROM Customers WHERE CustomerName LIKE '%A'; -- A로 끝나는 이름
SELECT * FROM Customers WHERE CustomerName LIKE '%OR%'; -- 중간에 OR이라는 이름이 있을 경우
SELECT * FROM Customers WHERE CustomerName LIKE '_R%'; -- 두번째 철자가 R인 이름
SELECT * FROM Customers WHERE CustomerName LIKE 'A_%_%'; -- A로 시작하고 3글자 이상
SELECT * FROM Customers WHERE ContactName LIKE 'A%O'; -- A로 시작하고 O로 끝나는 이름

-- FirstName이 A로 시작하는 직원들
SELECT * FROM Employees WHERE FirstName LIKE 'A%';
-- ContactName이 E로 끝나는 공급자들
SELECT * FROM Suppliers WHERE ContactName LIKE '%E';
-- C로 시작하고 S로 끝나는 상품명들
SELECT * FROM Products WHERE ProductName LIKE 'C%S';
-- C로 시작하는 5글자 상품명을 가진 상품들
SELECT * FROM Products WHERE ProductName LIKE 'C____';
