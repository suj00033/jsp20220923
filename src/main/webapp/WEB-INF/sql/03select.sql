-- SELECT : 데이터를 얻는 명령문
/*
SELECT 컬럼명 리스트 FROM 테이블명;
*/
-- Customers 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName만 뽑아서 열조회
SELECT CustomerName FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName, Address 열 조회
SELECT CustomerName, Address FROM Customers;

-- Employees 테이블의 모든 레코드(행)을 LastName, BirthDate 열 조회
SELECT LastName, BirthDate FROM Employees;

-- sql 작성시 주의할점
-- 대소문자를 구별하지 않는다.
-- 데이터베이스 종류에 따라 구분할 수도 있다.
-- 키워드는 대문자
-- 그 외는 소문자 or CamelCase

SELECT LastName, BirthDate FROM Employees; -- 키워드는 대문자, 나머지는 CamelCase 권장
select lastname, birthdate from Employees; -- 으로도 동작 가능
select lastname, birthdate from employees; -- 마리아db버전에서는 데이터베이스 대소문자 구별함

-- 모든 컬럼 조회 : *
SELECT * FROM Customers;
SELECT 
	CustomerID, 
    CustomerName, 
    ContactName,
	Address,
    City,
    PostalCode,
    Country
FROM Customers;   -- 와 같다

-- SELECT 이후의 컬럼의 순서가 결과의 순서가 됨
SELECT CustomerName, Address FROM Customers;
SELECT Address, CustomerName FROM Customers; -- 위와 아래는 다름

-- Employees 테이블의 모든 레코드를 FirstName, LastName, BirthDate 컬럼 순으로 조회
SELECT FirstName, LastName, BirthDate FROM Employees;