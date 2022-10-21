USE mydb1;

-- 테이블 만들기
CREATE TABLE myTable01( -- 파일명
	-- 컬럼명 자료형 나열
    col1 VARCHAR(255),
    col2 VARCHAR(255),
    col3 VARCHAR(255)
);

SELECT * FROM myTable01;

-- 테이블 구조 보기
DESCRIBE myTable01;
DESC myTable01; -- 축약어

-- 새 테이블 만들기
-- 테이블명 myTable02
-- 컬럼명은 name, age, address
CREATE TABLE myTable02( 
    name VARCHAR(255),
    age VARCHAR(255),
    address VARCHAR(255)
);
DESC myTable02;

DROP TABLE myTable01;

-- 이미 있는 테이블 복사하기
CREATE TABLE myCustomers AS
SELECT * FROM w3schools.Customers;

DESC myCustomers;

SELECT * FROM myCustomers;

-- w3schools.Employees 테이블을 mydb1에 myEmployess 테이블로 복사
CREATE TABLE myEmployees AS
SELECT * FROM w3schools.Employees;

DESC myEmployees;
SELECT * FROM myEmployees;

-- Products
CREATE TABLE myProducts AS
SELECT ProductID id,
	   ProductName name,
       Price price
FROM w3schools.Products;
DESC myProducts;

SELECT * FROM myProducts;