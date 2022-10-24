CREATE DATABASE mydb5;
USE mydb5;

CREATE TABLE Categories AS SELECT CategoryID, CategoryName FROM w3schools.Categories; -- 카테고리 복사
CREATE TABLE Products AS SELECT ProductID, ProductName, CategoryID FROM w3schools.Products;

SELECT * FROM Categories;
SELECT * FROM Products;

-- 'Chais' 상품이 어떤 카테고리명에 소속되어있는가?
SELECT * FROM Products WHERE ProductName = 'Chais';
SELECT * FROM Categories WHERE CategoryID = 1;

-- 두개의 테이블을 합쳐 보는 코드가 너무 길어짐
SELECT * FROM Categories WHERE CategoryID = 
(SELECT CategoryID FROM Products WHERE ProductName= 'Chais');

-- Join : 두개 이상의 테이블을 연결해서 조회할 수 있다
-- CARTESIAN PRODUCT (곱집합)
-- 결과행 = Arow x Brow
-- 결과열 = Acol + Bcol
DESC Products; -- 3개의 열(col)
SELECT COUNT(*) FROM Products; -- 77개 row(행)

DESC Categories; -- 2개의 col
SELECT COUNT(*) FROM Categories; -- 8개 rows

-- Products와 Categories를 Catesian Product
-- 결과 행의수 : 77 * 8
-- 결과 열의수 : 3 + 2

-- Catesian Product
SELECT * FROM Products JOIN Categories; -- 열의 수:5
SELECT COUNT(*) FROM Products JOIN Categories; -- 행의 수:616 

-- 필요한 컬럼만 솎아내서 출력
SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID;
-- WHERE절 보다 ON으로 많이 쓰임
-- 'Chais' 상품이 어떤 카테고리명에 소속되어있는가?
SELECT * FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName = 'Chais';

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
And Products.ProductName = 'Chais'; -- 으로도 쓰일 수 있음

-- Ikura 라는 상품의 카테고리명 조회
DESC Products; -- 3열
SELECT COUNT(*) FROM Products; -- 77행

DESC Categories; -- 2열
SELECT COUNT(*) FROM Categories; -- 8행

-- Catesian
SELECT * FROM Products JOIN Categories; -- 5열
SELECT COUNT(*) FROM Products JOIN Categories; -- 616

SELECT * FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName = 'Ikura';

-- Seafood 카테고리에 속한 상품명들 조회
SELECT * FROM Categories JOIN Products
ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = 'Seafood';

/* SELECT Products.ProductName FROM Categories JOIN Products
ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = 'Seafood'; */

SELECT * FROM Categories;

-- ALIAS : 테이블명, 컬럼명에 별칭 / 별칭으로 코드를 압축할 수 있다

SELECT * FROM Categories c JOIN Products AS p 
	ON c.CategoryID = p.CategoryID
    WHERE c.CategoryName = 'Seafood';
    
SELECT c.CategoryID, Products;
