-- DISTINCT
SELECT * FROM Customers;
SELECT Country FROM Customers; -- 91개
SELECT DISTINCT Country FROM Customers; -- 21개 (중복제거)
SELECT City, Country FROM Customers;  -- 91개
SELECT DISTINCT City, Country FROM Customers; -- 69개 (중복제거)

-- Suppliers 테이블의 Country 컬럼을 중복제거해서 조회
-- Suppliers 테이블의 Country 컬럼을 중복제거하지않고 조회

SELECT DISTINCT Country FROM Suppliers; -- 16개
SELECT Country FROM Suppliers; -- 29개

SELECT DISTINCT Country FROM Suppliers;