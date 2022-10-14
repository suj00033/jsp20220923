-- UPDATE 레코드(row)의 필드(column)들을 수정
-- UPDATE 를 사용할시에는 WHERE를 절대 잊지마라
-- UPDATE 실행 전에 같은 WHERE 절로 SELECT 해보기
SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Alfred Schmit' -- 변경할 필드
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Maria Schmit', City = 'Frankfurt'
WHERE CustomerID = 1;

SELECT * FROM Customers ORDER BY 1 DESC;

-- 92번 고객의 고객명, 계약자명, 주소, 도시, 우편번호, 국가 모두 수정
UPDATE Customers
SET CustomerName = 'Estrella', ContactName = 'taqueria', Address = 'Av.782', City = 'Valencia', PostalCode = '77821', Country = 'Spain'
WHERE CustomerID = 92;

-- 93
UPDATE Customers
SET CustomerName = 'Hodu', ContactName = 'Nuuuts', Address = 'Guro9871', City = 'Gangnam', PostalCode = '45621', Country = 'Korea'
WHERE CustomerID = 93;

