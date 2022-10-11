-- 보다 크다 : >
SELECT * FROM Customers WHERE CustomerID > 89; -- 89보다 큰 아이디
SELECT * FROM Employees WHERE EmployeeID > 5;
SELECT * FROM Employees WHERE LastName > 'Callahan'; -- callahan 보다 큰 name들(코드순)
SELECT * FROM Employees WHERE BirthDate > '1959-12-31'; -- 60년대 이후생

-- Products 테이블에서 가격(price)가 10.00 보다 큰 상품들 조회
SELECT * FROM Products WHERE Price > 10.00;

-- Orders 테이블에서 1998년 이후에 주문한 주문번호(orderID) 조회
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate > '1997-12-31';